from PyQt6.QtWidgets import QApplication, QWidget, QPushButton, QMainWindow, QLineEdit, QLabel,QVBoxLayout, QMenu
from PyQt6.QtCore import QSize, Qt
from PyQt6.QtGui import QAction
import sys

class MainQt(QMainWindow):
    def __init__(self):
        super().__init__()
        self.label = QLabel()
        self.label.setText("empty")
        self.setCentralWidget(self.label)
        self.setMouseTracking(True)
    def mouseMoveEvent(self, e):
        self.label.setText("mouse move")
    def mousePressEvent(self, e):
        self.label.setText("mouse press")
    def mouseReleaseEvent(self, e):
        self.label.setText("mouse release")
    def mouseDoubleClickEvent(self, e):
        self.label.setText("double click")
    def contextMenuEvent(self, e):
        context = QMenu(self)
        context.addAction(QAction("text 1", self).triggered(self.print))
        context.addAction(QAction("text 2", self))
        context.exec(e.globalPos())
    def print():
        print("click")

def main():
    app = QApplication(sys.argv)
    window = MainQt()
    window.show()
    app.exec()

if __name__ == "__main__":
    main()