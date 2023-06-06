"""
    输入网站，或者用户名，返回对应的密码
"""


import sys, os, json

def analyzeParams()->list[str]:
    params:list[str] = sys.argv[1:]
    if len(params) == 0:
        raise Exception("请输入参数")
    return params

if __name__ == "__main__":
    pwdFilePath = os.environ.get("PWD", None)
    if pwdFilePath == None: print("密码文件不存在")
    else:
        params:list[str] = analyzeParams()
        with open(pwdFilePath) as fs:
            jsonData:dict = json.load(fs)
            pwd = jsonData.get(params[0], None)
            if pwd == None:
                print("该账户不存在")
            else:
                print(f"params {params[0]}'s pwd is:\n {pwd}")
