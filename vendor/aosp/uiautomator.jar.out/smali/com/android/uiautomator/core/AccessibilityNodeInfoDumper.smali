.class public Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfoDumper.java"


# static fields
.field private static final EXCLUDED_CLASSES:[Ljava/lang/String;

.field private static final LOGTAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    const-class v0, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->LOGTAG:Ljava/lang/String;

    .line 40
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "LinearLayout"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "RelativeLayout"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ListView"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->EXCLUDED_CLASSES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static accessibilityCheck(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 1
    .parameter "n"

    .prologue
    .line 158
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->safeCharSeqToString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->safeCharSeqToString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static dumpNodeRec(Landroid/view/accessibility/AccessibilityNodeInfo;Lorg/xmlpull/v1/XmlSerializer;I)V
    .locals 11
    .parameter "node"
    .parameter "serializer"
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 91
    invoke-static {p0}, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->excludedClass(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p0}, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->accessibilityCheck(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 92
    const-string v4, "NAF: The following control may not be accessibility friendly"

    invoke-interface {p1, v4}, Lorg/xmlpull/v1/XmlSerializer;->comment(Ljava/lang/String;)V

    .line 93
    const-string v4, ""

    const-string v5, "node"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 94
    const-string v4, ""

    const-string v5, "NAF"

    invoke-static {v9}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 98
    :goto_0
    const-string v4, ""

    const-string v5, "index"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 99
    const-string v4, ""

    const-string v5, "text"

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6}, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->safeCharSeqToString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 100
    const-string v4, ""

    const-string v5, "class"

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6}, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->safeCharSeqToString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 101
    const-string v4, ""

    const-string v5, "package"

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6}, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->safeCharSeqToString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 102
    const-string v4, ""

    const-string v5, "content-desc"

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6}, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->safeCharSeqToString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 103
    const-string v4, ""

    const-string v5, "checkable"

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isCheckable()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 104
    const-string v4, ""

    const-string v5, "checked"

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isChecked()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 105
    const-string v4, ""

    const-string v5, "clickable"

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 106
    const-string v4, ""

    const-string v5, "enabled"

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 107
    const-string v4, ""

    const-string v5, "focusable"

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 108
    const-string v4, ""

    const-string v5, "focused"

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 109
    const-string v4, ""

    const-string v5, "scrollable"

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isScrollable()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 110
    const-string v4, ""

    const-string v5, "long-clickable"

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isLongClickable()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 111
    const-string v4, ""

    const-string v5, "password"

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isPassword()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 112
    const-string v4, ""

    const-string v5, "selected"

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSelected()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 113
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 114
    .local v0, bounds:Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 115
    const-string v4, ""

    const-string v5, "bounds"

    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 116
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v2

    .line 117
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v2, :cond_3

    .line 118
    invoke-virtual {p0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    .line 119
    .local v1, child:Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v1, :cond_2

    .line 120
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isVisibleToUser()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 121
    invoke-static {v1, p1, v3}, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->dumpNodeRec(Landroid/view/accessibility/AccessibilityNodeInfo;Lorg/xmlpull/v1/XmlSerializer;I)V

    .line 122
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 117
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 96
    .end local v0           #bounds:Landroid/graphics/Rect;
    .end local v1           #child:Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v2           #count:I
    .end local v3           #i:I
    :cond_0
    const-string v4, ""

    const-string v5, "node"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_0

    .line 124
    .restart local v0       #bounds:Landroid/graphics/Rect;
    .restart local v1       #child:Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v2       #count:I
    .restart local v3       #i:I
    :cond_1
    sget-object v4, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->LOGTAG:Ljava/lang/String;

    const-string v5, "Skipping invisible child: %s"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 127
    :cond_2
    sget-object v4, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->LOGTAG:Ljava/lang/String;

    const-string v5, "Null child %d/%d, parent: %s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    const/4 v7, 0x2

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 131
    .end local v1           #child:Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_3
    const-string v4, ""

    const-string v5, "node"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 132
    return-void
.end method

.method public static dumpWindowToFile(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 5
    .parameter "info"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 49
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "local"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 50
    .local v0, baseDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 51
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 52
    invoke-virtual {v0, v4, v3}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 53
    invoke-virtual {v0, v4, v3}, Ljava/io/File;->setWritable(ZZ)Z

    .line 54
    invoke-virtual {v0, v4, v3}, Ljava/io/File;->setReadable(ZZ)Z

    .line 56
    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "local"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v3, "window_dump.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p0, v1}, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->dumpWindowToFile(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/io/File;)V

    .line 58
    return-void
.end method

.method public static dumpWindowToFile(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/io/File;)V
    .locals 12
    .parameter "root"
    .parameter "dumpFile"

    .prologue
    .line 66
    if-nez p0, :cond_0

    .line 87
    :goto_0
    return-void

    .line 69
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 71
    .local v4, startTime:J
    :try_start_0
    new-instance v7, Ljava/io/FileWriter;

    invoke-direct {v7, p1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 72
    .local v7, writer:Ljava/io/FileWriter;
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v3

    .line 73
    .local v3, serializer:Lorg/xmlpull/v1/XmlSerializer;
    new-instance v6, Ljava/io/StringWriter;

    invoke-direct {v6}, Ljava/io/StringWriter;-><init>()V

    .line 74
    .local v6, stringWriter:Ljava/io/StringWriter;
    invoke-interface {v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 75
    const-string v8, "UTF-8"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-interface {v3, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 76
    const-string v8, ""

    const-string v9, "hierarchy"

    invoke-interface {v3, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 77
    const/4 v8, 0x0

    invoke-static {p0, v3, v8}, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->dumpNodeRec(Landroid/view/accessibility/AccessibilityNodeInfo;Lorg/xmlpull/v1/XmlSerializer;I)V

    .line 78
    const-string v8, ""

    const-string v9, "hierarchy"

    invoke-interface {v3, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 79
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 80
    invoke-virtual {v6}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v7}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .end local v3           #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .end local v6           #stringWriter:Ljava/io/StringWriter;
    .end local v7           #writer:Ljava/io/FileWriter;
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 86
    .local v1, endTime:J
    sget-object v8, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->LOGTAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Fetch time: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v1, v4

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "ms"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 82
    .end local v1           #endTime:J
    :catch_0
    move-exception v0

    .line 83
    .local v0, e:Ljava/io/IOException;
    sget-object v8, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->LOGTAG:Ljava/lang/String;

    const-string v9, "failed to dump window to file"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private static excludedClass(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 6
    .parameter "n"

    .prologue
    .line 142
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->safeCharSeqToString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 143
    .local v1, className:Ljava/lang/String;
    sget-object v0, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->EXCLUDED_CLASSES:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3

    .line 144
    .local v2, excludedClassName:Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 145
    const/4 v5, 0x1

    .line 147
    .end local v2           #excludedClassName:Ljava/lang/String;
    :goto_1
    return v5

    .line 143
    .restart local v2       #excludedClassName:Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 147
    .end local v2           #excludedClassName:Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private static safeCharSeqToString(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1
    .parameter "cs"

    .prologue
    .line 164
    if-nez p0, :cond_0

    .line 165
    const-string v0, ""

    .line 167
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->stripInvalidXMLChars(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static stripInvalidXMLChars(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 4
    .parameter "cs"

    .prologue
    .line 172
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 183
    .local v2, ret:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v1, v3, :cond_17

    .line 184
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 186
    .local v0, ch:C
    const/4 v3, 0x1

    if-lt v0, v3, :cond_0

    const/16 v3, 0x8

    if-le v0, v3, :cond_15

    :cond_0
    const/16 v3, 0xb

    if-lt v0, v3, :cond_1

    const/16 v3, 0xc

    if-le v0, v3, :cond_15

    :cond_1
    const/16 v3, 0xe

    if-lt v0, v3, :cond_2

    const/16 v3, 0x1f

    if-le v0, v3, :cond_15

    :cond_2
    const/16 v3, 0x7f

    if-lt v0, v3, :cond_3

    const/16 v3, 0x84

    if-le v0, v3, :cond_15

    :cond_3
    const/16 v3, 0x86

    if-lt v0, v3, :cond_4

    const/16 v3, 0x9f

    if-le v0, v3, :cond_15

    :cond_4
    const v3, 0xfdd0

    if-lt v0, v3, :cond_5

    const v3, 0xfddf

    if-le v0, v3, :cond_15

    :cond_5
    const v3, 0x1fffe

    if-lt v0, v3, :cond_6

    const v3, 0x1ffff

    if-le v0, v3, :cond_15

    :cond_6
    const v3, 0x2fffe

    if-lt v0, v3, :cond_7

    const v3, 0x2ffff

    if-le v0, v3, :cond_15

    :cond_7
    const v3, 0x3fffe

    if-lt v0, v3, :cond_8

    const v3, 0x3ffff

    if-le v0, v3, :cond_15

    :cond_8
    const v3, 0x4fffe

    if-lt v0, v3, :cond_9

    const v3, 0x4ffff

    if-le v0, v3, :cond_15

    :cond_9
    const v3, 0x5fffe

    if-lt v0, v3, :cond_a

    const v3, 0x5ffff

    if-le v0, v3, :cond_15

    :cond_a
    const v3, 0x6fffe

    if-lt v0, v3, :cond_b

    const v3, 0x6ffff

    if-le v0, v3, :cond_15

    :cond_b
    const v3, 0x7fffe

    if-lt v0, v3, :cond_c

    const v3, 0x7ffff

    if-le v0, v3, :cond_15

    :cond_c
    const v3, 0x8fffe

    if-lt v0, v3, :cond_d

    const v3, 0x8ffff

    if-le v0, v3, :cond_15

    :cond_d
    const v3, 0x9fffe

    if-lt v0, v3, :cond_e

    const v3, 0x9ffff

    if-le v0, v3, :cond_15

    :cond_e
    const v3, 0xafffe

    if-lt v0, v3, :cond_f

    const v3, 0xaffff

    if-le v0, v3, :cond_15

    :cond_f
    const v3, 0xbfffe

    if-lt v0, v3, :cond_10

    const v3, 0xbffff

    if-le v0, v3, :cond_15

    :cond_10
    const v3, 0xcfffe

    if-lt v0, v3, :cond_11

    const v3, 0xcffff

    if-le v0, v3, :cond_15

    :cond_11
    const v3, 0xdfffe

    if-lt v0, v3, :cond_12

    const v3, 0xdffff

    if-le v0, v3, :cond_15

    :cond_12
    const v3, 0xefffe

    if-lt v0, v3, :cond_13

    const v3, 0xeffff

    if-le v0, v3, :cond_15

    :cond_13
    const v3, 0xffffe

    if-lt v0, v3, :cond_14

    const v3, 0xfffff

    if-le v0, v3, :cond_15

    :cond_14
    const v3, 0x10fffe

    if-lt v0, v3, :cond_16

    const v3, 0x10ffff

    if-gt v0, v3, :cond_16

    .line 197
    :cond_15
    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 183
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 199
    :cond_16
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 201
    .end local v0           #ch:C
    :cond_17
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
