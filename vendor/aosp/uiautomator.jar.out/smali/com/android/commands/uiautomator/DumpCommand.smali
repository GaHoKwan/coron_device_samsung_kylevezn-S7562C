.class public Lcom/android/commands/uiautomator/DumpCommand;
.super Lcom/android/commands/uiautomator/Launcher$Command;
.source "DumpCommand.java"


# static fields
.field private static final DEFAULT_DUMP_FILE:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "window_dump.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/android/commands/uiautomator/DumpCommand;->DEFAULT_DUMP_FILE:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "dump"

    invoke-direct {p0, v0}, Lcom/android/commands/uiautomator/Launcher$Command;-><init>(Ljava/lang/String;)V

    .line 39
    return-void
.end method


# virtual methods
.method public detailedOptions()Ljava/lang/String;
    .locals 2

    .prologue
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    dump [file]\n      [file]: the location where the dumped XML should be stored, default is\n      "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/commands/uiautomator/DumpCommand;->DEFAULT_DUMP_FILE:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run([Ljava/lang/String;)V
    .locals 7
    .parameter "args"

    .prologue
    const/4 v6, 0x0

    .line 55
    sget-object v1, Lcom/android/commands/uiautomator/DumpCommand;->DEFAULT_DUMP_FILE:Ljava/io/File;

    .line 56
    .local v1, dumpFile:Ljava/io/File;
    array-length v2, p1

    if-lez v2, :cond_0

    .line 57
    new-instance v1, Ljava/io/File;

    .end local v1           #dumpFile:Ljava/io/File;
    aget-object v2, p1, v6

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    .restart local v1       #dumpFile:Ljava/io/File;
    :cond_0
    new-instance v0, Landroid/accessibilityservice/UiTestAutomationBridge;

    invoke-direct {v0}, Landroid/accessibilityservice/UiTestAutomationBridge;-><init>()V

    .line 60
    .local v0, bridge:Landroid/accessibilityservice/UiTestAutomationBridge;
    invoke-virtual {v0}, Landroid/accessibilityservice/UiTestAutomationBridge;->connect()V

    .line 64
    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x2710

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/accessibilityservice/UiTestAutomationBridge;->waitForIdle(JJ)V

    .line 65
    invoke-virtual {v0}, Landroid/accessibilityservice/UiTestAutomationBridge;->getRootAccessibilityNodeInfoInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->dumpWindowToFile(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/io/File;)V

    .line 67
    invoke-virtual {v0}, Landroid/accessibilityservice/UiTestAutomationBridge;->disconnect()V

    .line 68
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "UI hierchary dumped to: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public shortHelp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const-string v0, "creates an XML dump of current UI hierarchy"

    return-object v0
.end method
