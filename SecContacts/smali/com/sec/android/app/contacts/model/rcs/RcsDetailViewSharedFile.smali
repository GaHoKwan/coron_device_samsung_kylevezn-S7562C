.class public Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewSharedFile;
.super Ljava/lang/Object;
.source "RcsDetailViewSharedFile.java"


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static sMimeType:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mActionListener:Landroid/view/View$OnClickListener;

.field mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewSharedFile;->sMimeType:Ljava/util/HashMap;

    .line 20
    const-class v0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewSharedFile;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewSharedFile;->TAG:Ljava/lang/String;

    .line 29
    const-string v0, "MPEG"

    const-string v1, "video/mpeg"

    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewSharedFile;->addMimeType(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const-string v0, "MPG"

    const-string v1, "video/mpeg"

    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewSharedFile;->addMimeType(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const-string v0, "MP4"

    const-string v1, "video/mp4"

    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewSharedFile;->addMimeType(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const-string v0, "MPV"

    const-string v1, "video/mp4"

    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewSharedFile;->addMimeType(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const-string v0, "3GP"

    const-string v1, "video/3gpp"

    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewSharedFile;->addMimeType(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string v0, "3GPP"

    const-string v1, "video/3gpp"

    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewSharedFile;->addMimeType(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string v0, "3G2"

    const-string v1, "video/3gpp2"

    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewSharedFile;->addMimeType(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string v0, "3GPP2"

    const-string v1, "video/3gpp2"

    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewSharedFile;->addMimeType(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string v0, "JPG"

    const-string v1, "image/jpeg"

    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewSharedFile;->addMimeType(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v0, "JPEG"

    const-string v1, "image/jpeg"

    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewSharedFile;->addMimeType(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string v0, "GIF"

    const-string v1, "image/gif"

    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewSharedFile;->addMimeType(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v0, "PNG"

    const-string v1, "image/png"

    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewSharedFile;->addMimeType(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v0, "BMP"

    const-string v1, "image/x-ms-bmp"

    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewSharedFile;->addMimeType(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v0, "WBMP"

    const-string v1, "image/vnd.wap.wbmp"

    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewSharedFile;->addMimeType(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewSharedFile$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewSharedFile$1;-><init>(Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewSharedFile;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewSharedFile;->mActionListener:Landroid/view/View$OnClickListener;

    .line 60
    iput-object p1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewSharedFile;->mContext:Landroid/content/Context;

    .line 61
    sget-object v0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewSharedFile;->TAG:Ljava/lang/String;

    const-string v1, "RcsDetailViewSharedFile: create"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewSharedFile;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewSharedFile;->getIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static addMimeType(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "extension"
    .parameter "miniType"

    .prologue
    .line 24
    sget-object v0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewSharedFile;->sMimeType:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    return-void
.end method

.method private getExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "path"

    .prologue
    .line 75
    const/16 v1, 0x2e

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 76
    .local v0, lastDot:I
    if-gez v0, :cond_0

    const/4 v1, 0x0

    .line 78
    :goto_0
    return-object v1

    :cond_0
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .parameter "path"

    .prologue
    .line 66
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 68
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 69
    .local v0, file:Ljava/io/File;
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewSharedFile;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 71
    return-object v1
.end method

.method private getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "path"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewSharedFile;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, ext:Ljava/lang/String;
    sget-object v2, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewSharedFile;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMimeType: ext:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " mimeType:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v1, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewSharedFile;->sMimeType:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    sget-object v1, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewSharedFile;->sMimeType:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method


# virtual methods
.method public SetDataAndAction(Landroid/view/View;Ljava/lang/String;)V
    .locals 5
    .parameter "v"
    .parameter "path"

    .prologue
    const/4 v4, 0x1

    .line 90
    sget-object v1, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewSharedFile;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SetDataAndAction: path:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const v1, 0x7f090090

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 92
    .local v0, view:Landroid/view/View;
    invoke-virtual {v0, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 93
    invoke-virtual {v0, v4}, Landroid/view/View;->setClickable(Z)V

    .line 94
    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 95
    iget-object v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewSharedFile;->mActionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    return-void
.end method
