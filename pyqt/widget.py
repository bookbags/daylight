import sys
from PyQt6.QtWidgets import QApplication, QWidget, QMainWindow, QLabel, QCheckBox, QComboBox
from PyQt6.QtCore import Qt

class MainWindow(QMainWindow):
    def __init__(self):
        super().__init__()
        self.setWindowTitle("widget")
        self.comboBox = QComboBox()
        self.comboBox.addItems(["one", "two", "three"])

        self.comboBox.currentIndexChanged.connect(self.indexChange)
        self.comboBox.currentTextChanged.connect(self.textChange)

        self.setCentralWidget(self.comboBox)

    def checkedState(self, e):
        print(e)

    def indexChange(self, e):
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