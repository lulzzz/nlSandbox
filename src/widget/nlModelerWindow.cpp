#include "main/stdafx.h"
#include "widget/nlModelerWindow.h"

nlModelerWindow::nlModelerWindow( Ui_MainWindow* ui, QWidget *parent, Qt::WFlags flags )
    //:QMainWindow( parent, (Qt::WindowStaysOnTopHint ) ), /* 常に最前面 */
    :QMainWindow( parent ),
    ui_(ui)
{
}
