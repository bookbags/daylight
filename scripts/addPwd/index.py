"""
    添加命令
"""
import os, sys, json

def analyzeParams():
    params = sys.argv[1:]
    if len(params) == 0:
        raise Exception("格式错误")
    
    return [param.split("=")[1] for param in params]


def toolTip():
    print("""账号保存方式有两种形式:
                1. 网站名:{
                    account: xxxx
                    pwd:xxx
                }
                websit=xxx account=xxx pwd=xxx
                2. 账号：密码
                account=xxx pwd=xxx""")
def writeFile(key, value):
    pwdFilePath = os.environ.get("pwd", None)
    if pwdFilePath == None:
        print("密码文件不存在, 请手动设置pwd字段")
    else:
        jsonData = {}
        with open(pwdFilePath, mode="r") as fs:
            jsonData = json.load(fs)
            
        with open(pwdFilePath, mode="w") as fs:
            jsonData[key] = value
            json.dump(jsonData, fs)
        print("添加成功")

def keepOnAccount(account, pwd):
    writeFile(account, pwd)
    

def keepOnWebsit(websit, account, pwd):
    writeFile(websit, {"account":account, "pwd":pwd})
    

if __name__ == "__main__":
    toolTip()
    params = analyzeParams()

    todo = {
        2:  keepOnAccount,
        3: keepOnWebsit
    }
    todo[len(params)](*params)