.class synthetic Lcom/sec/android/allshare/ImageViewerImpl$3;
.super Ljava/lang/Object;
.source "ImageViewerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/allshare/ImageViewerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sec$android$allshare$Item$MediaType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 259
    invoke-static {}, Lcom/sec/android/allshare/Item$MediaType;->values()[Lcom/sec/android/allshare/Item$MediaType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/android/allshare/ImageViewerImpl$3;->$SwitchMap$com$sec$android$allshare$Item$MediaType:[I

    :try_start_0
    sget-object v0, Lcom/sec/android/allshare/ImageViewerImpl$3;->$SwitchMap$com$sec$android$allshare$Item$MediaType:[I

    sget-object v1, Lcom/sec/android/allshare/Item$MediaType;->ITEM_IMAGE:Lcom/sec/android/allshare/Item$MediaType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
