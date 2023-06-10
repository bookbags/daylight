import sys
from PyQt6.QtWidgets import QApplication, QWidget, QMainWindow, QLabel, QCheckBox, QComboBox, QListWidget,QLineEdit
from PyQt6.QtCore import Qt

class MainWindow(QMainWindow):
    def __init__(self):
        super().__init__()
        self.setWindowTitle("widget")
        
        self.lineEdit = QLineEdit()
        self.lineEdit.setMaxLength(10)
        self.lineEdit.setPlaceholderText("请输入你的名字")
        self.lineEdit.textChanged.connect(self.textChange)
        self.lineEdit.textEdited.connect(self.textEdit)

        self.lineEdit.returnPressed.connect(self.returnPressed)


        self.setCentralWidget(self.lineEdit)

    def returnPressed(self):
        print("return press")

    def textChange(self, e):
        print(e)

    def checkedState(self, e):
        print(e)
    def textEdit(self, e):
        print(e)

    def indexChange(self, e):
        # e.setText("click")
        print(e)
    def textChange(self, e):
        print(e)

def main():
    app = QApplication(sys.argv)
    window = MainWindow()
    window.show()
    app.exec()


if __name__ == "__main__":
    main()