.class Lcom/sec/android/allshare/extension/SECVideoCaption$GetSECCaption;
.super Ljava/lang/Thread;
.source "SECVideoCaption.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/allshare/extension/SECVideoCaption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetSECCaption"
.end annotation


# instance fields
.field private mVideoURL:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/allshare/extension/SECVideoCaption;


# direct methods
.method public constructor <init>(Lcom/sec/android/allshare/extension/SECVideoCaption;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "resourceURL"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/sec/android/allshare/extension/SECVideoCaption$GetSECCaption;->this$0:Lcom/sec/android/allshare/extension/SECVideoCaption;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 58
    iput-object p2, p0, Lcom/sec/android/allshare/extension/SECVideoCaption$GetSECCaption;->mVideoURL:Ljava/lang/String;

    .line 59
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/allshare/extension/SECVideoCaption;->mSubTitleURL:Ljava/lang/String;

    .line 60
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 63
    const/4 v3, 0x0

    .line 64
    .local v3, ext:Ljava/lang/String;
    const-string v10, "DMPVideoSubtitle"

    invoke-static {v10}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v1

    .line 65
    .local v1, client:Landroid/net/http/AndroidHttpClient;
    new-instance v4, Lorg/apache/http/client/methods/HttpHead;

    iget-object v10, p0, Lcom/sec/android/allshare/extension/SECVideoCaption$GetSECCaption;->mVideoURL:Ljava/lang/String;

    invoke-direct {v4, v10}, Lorg/apache/http/client/methods/HttpHead;-><init>(Ljava/lang/String;)V

    .line 66
    .local v4, head:Lorg/apache/http/client/methods/HttpHead;
    const-string v10, "getCaptionInfo.sec"

    const-string v11, "1"

    invoke-virtual {v4, v10, v11}, Lorg/apache/http/message/AbstractHttpMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v10, "getcontentFeatures.dlna.org"

    const-string v11, "1"

    invoke-virtual {v4, v10, v11}, Lorg/apache/http/message/AbstractHttpMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :try_start_0
    invoke-virtual {v1, v4}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    .line 71
    .local v9, response:Lorg/apache/http/HttpResponse;
    if-eqz v9, :cond_2

    .line 72
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v6

    .line 73
    .local v6, headers:[Lorg/apache/http/Header;
    move-object v0, v6

    .local v0, arr$:[Lorg/apache/http/Header;
    array-length v8, v0

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_0
    if-ge v7, v8, :cond_2

    aget-object v5, v0, v7

    .line 74
    .local v5, header:Lorg/apache/http/Header;
    invoke-interface {v5}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "CaptionInfo.sec"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 75
    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 73
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 79
    .end local v0           #arr$:[Lorg/apache/http/Header;
    .end local v5           #header:Lorg/apache/http/Header;
    .end local v6           #headers:[Lorg/apache/http/Header;
    .end local v7           #i$:I
    .end local v8           #len$:I
    .end local v9           #response:Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v2

    .line 80
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 81
    if-eqz v1, :cond_1

    .line 82
    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 83
    :cond_1
    const/4 v1, 0x0

    .line 91
    .end local v2           #e:Ljava/io/IOException;
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 92
    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 94
    :cond_3
    sput-object v3, Lcom/sec/android/allshare/extension/SECVideoCaption;->mSubTitleURL:Ljava/lang/String;

    .line 95
    return-void

    .line 84
    :catch_1
    move-exception v2

    .line 85
    .local v2, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 86
    if-eqz v1, :cond_4

    .line 87
    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 88
    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method
