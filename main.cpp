#include <DApplication>
#include <DWidgetUtil>  //Dtk::Widget::moveToCenter(&w); 要调用它，就得引用DWidgetUtil
#include <QDesktopWidget>
#include <widget.h>
#include <QTranslator>
#include <DAboutDialog>

DWIDGET_USE_NAMESPACE
int main(int argc, char *argv[])
{
    DApplication::loadDXcbPlugin();  //让bar处在标题栏中
    DApplication a(argc, argv);
    DAboutDialog dialog;
    a.setAttribute(Qt::AA_UseHighDpiPixmaps);

    QTranslator translator;
    QString locale = QLocale::system().name();
    translator.load(QString("oh-my-dde_") + locale,":/translations");
    a.installTranslator(&translator);

    a.loadTranslator();
    // loadTranslator() only find translation from follows path:
    // ~/.local/share/APPNAME/translations;
    // /usr/local/share/APPNAME/translations;
    // /usr/share/APPNAME/translations;
    
    a.setAboutDialog(&dialog);
    Widget w;
    w.setWindowFlags(w.windowFlags() &~ Qt::WindowMaximizeButtonHint);
    w.show();
    //让打开时界面显示在正中
    Dtk::Widget::moveToCenter(&w);

    return a.exec();
}
