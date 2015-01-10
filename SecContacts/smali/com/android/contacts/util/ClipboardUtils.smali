.class public Lcom/android/contacts/util/ClipboardUtils;
.super Ljava/lang/Object;
.source "ClipboardUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyText(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V
    .locals 3
    .parameter "context"
    .parameter "label"
    .parameter "text"
    .parameter "showToast"

    .prologue
    .line 44
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 58
    :goto_0
    return-void

    .line 47
    :cond_0
    const-string v2, "clipboardEx"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/ClipboardExManager;

    .line 48
    .local v0, clipEx:Landroid/sec/clipboard/ClipboardExManager;
    new-instance v1, Landroid/sec/clipboard/data/list/ClipboardDataText;

    invoke-direct {v1}, Landroid/sec/clipboard/data/list/ClipboardDataText;-><init>()V

    .line 49
    .local v1, clipdata:Landroid/sec/clipboard/data/list/ClipboardDataText;
    invoke-virtual {v1, p2}, Landroid/sec/clipboard/data/list/ClipboardDataText;->SetText(Ljava/lang/CharSequence;)Z

    .line 50
    invoke-virtual {v0, p0, v1}, Landroid/sec/clipboard/ClipboardExManager;->setData(Landroid/content/Context;Landroid/sec/clipboard/data/ClipboardData;)Z

    goto :goto_0
.end method
