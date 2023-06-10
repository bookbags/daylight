from PyQt6.QtWidgets import QApplication, QWidget, QMainWindow, QVBoxLayout,QHBoxLayout
from PyQt6.QtGui import QPalette, QColor
import sys

class Widget(QWidget):
    def __init__(self, color:str):
        super().__init__()
        self.setAutoFillBackground(True)

        palette = self.palette()

        palette.setColor(QPalette.ColorRole.Window, QColor(color))

        self.setPalette(palette)


class MainWindow(QMainWindow):
    def __init__(self):
        super().__init__()
        self.setWindowTitle("layout")
        
        layout = QHBoxLayout()
        layout.addWidget(Widget("red"))
        layout.addWidget(Widget("blue"))
        layout.addWidget(Widget("yellow"))

        widget = QWidget()

        widget.setLayout(layout)

        self.setCentralWidget(widget)


def main():
    app = QApplication(sys.argv)
    window = MainWindow()
    window.show()
    app.exec()
if __name__ == "__main__":
    main()