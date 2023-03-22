#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "Controller.h"
#include "cpuinfo.h"
#include "meminfo.h"

int main(int argc, char *argv[])
{
#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif
    QGuiApplication app(argc, argv);

    qmlRegisterType<Controller>("com.lab.cont", 1, 0, "USBInfo");
    qmlRegisterType<CpuInfo>("com.lab2.cpu", 1, 0, "CpuInfo");
    qmlRegisterType<MemInfo>("com.lab2.mem", 1, 0, "MemInfo");

    QQmlApplicationEngine engine;

    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
//    Controller controller;

//    engine.rootContext()->setContextProperty("newCont", &controller);
    engine.load(url);

    return app.exec();
}
