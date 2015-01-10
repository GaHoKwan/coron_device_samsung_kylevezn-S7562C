.class Lcom/android/mms/ui/UriImage$ResizeInfo;
.super Ljava/lang/Object;
.source "UriImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/UriImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResizeInfo"
.end annotation


# static fields
.field private static final NOT_SET:I = -0x1


# instance fields
.field public bytesAfterCompress:I

.field public bytesBeforeCompress:I

.field public height:I

.field public oomCount:I

.field public quality:I

.field public rotatedDeg:I

.field public width:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 594
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 599
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/UriImage$ResizeInfo;->oomCount:I

    .line 600
    iput v1, p0, Lcom/android/mms/ui/UriImage$ResizeInfo;->rotatedDeg:I

    .line 601
    iput v1, p0, Lcom/android/mms/ui/UriImage$ResizeInfo;->width:I

    .line 602
    iput v1, p0, Lcom/android/mms/ui/UriImage$ResizeInfo;->height:I

    .line 603
    iput v1, p0, Lcom/android/mms/ui/UriImage$ResizeInfo;->quality:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/UriImage$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 594
    invoke-direct {p0}, Lcom/android/mms/ui/UriImage$ResizeInfo;-><init>()V

    return-void
.end method
