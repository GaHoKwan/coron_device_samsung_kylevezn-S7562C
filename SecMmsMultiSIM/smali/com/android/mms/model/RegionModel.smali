.class public Lcom/android/mms/model/RegionModel;
.super Lcom/android/mms/model/Model;
.source "RegionModel.java"


# static fields
.field private static final DEFAULT_FIT:Ljava/lang/String; = "meet"


# instance fields
.field private mBackgroundColor:Ljava/lang/String;

.field private mFit:Ljava/lang/String;

.field private mHeight:I

.field private mLeft:I

.field private final mRegionId:Ljava/lang/String;

.field private mTop:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIII)V
    .locals 7
    .parameter "regionId"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 38
    const-string v2, "meet"

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/model/RegionModel;-><init>(Ljava/lang/String;Ljava/lang/String;IIII)V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIII)V
    .locals 8
    .parameter "regionId"
    .parameter "fit"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 42
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/model/RegionModel;-><init>(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;)V
    .locals 0
    .parameter "regionId"
    .parameter "fit"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "bgColor"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/mms/model/Model;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/mms/model/RegionModel;->mRegionId:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/android/mms/model/RegionModel;->mFit:Ljava/lang/String;

    .line 49
    iput p3, p0, Lcom/android/mms/model/RegionModel;->mLeft:I

    .line 50
    iput p4, p0, Lcom/android/mms/model/RegionModel;->mTop:I

    .line 51
    iput p5, p0, Lcom/android/mms/model/RegionModel;->mWidth:I

    .line 52
    iput p6, p0, Lcom/android/mms/model/RegionModel;->mHeight:I

    .line 53
    iput-object p7, p0, Lcom/android/mms/model/RegionModel;->mBackgroundColor:Ljava/lang/String;

    .line 54
    return-void
.end method


# virtual methods
.method public getBackgroundColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/mms/model/RegionModel;->mBackgroundColor:Ljava/lang/String;

    return-object v0
.end method

.method public getFit()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/mms/model/RegionModel;->mFit:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/android/mms/model/RegionModel;->mHeight:I

    return v0
.end method

.method public getLeft()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/android/mms/model/RegionModel;->mLeft:I

    return v0
.end method

.method public getRegionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/mms/model/RegionModel;->mRegionId:Ljava/lang/String;

    return-object v0
.end method

.method public getTop()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/android/mms/model/RegionModel;->mTop:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/android/mms/model/RegionModel;->mWidth:I

    return v0
.end method

.method public setBackgroundColor(Ljava/lang/String;)V
    .locals 1
    .parameter "bgColor"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/mms/model/RegionModel;->mBackgroundColor:Ljava/lang/String;

    .line 150
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/model/Model;->notifyModelChanged(Z)V

    .line 151
    return-void
.end method

.method public setFit(Ljava/lang/String;)V
    .locals 1
    .parameter "fit"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/mms/model/RegionModel;->mFit:Ljava/lang/String;

    .line 75
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/model/Model;->notifyModelChanged(Z)V

    .line 76
    return-void
.end method

.method public setHeight(I)V
    .locals 1
    .parameter "height"

    .prologue
    .line 134
    iput p1, p0, Lcom/android/mms/model/RegionModel;->mHeight:I

    .line 135
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/model/Model;->notifyModelChanged(Z)V

    .line 136
    return-void
.end method

.method public setLeft(I)V
    .locals 1
    .parameter "left"

    .prologue
    .line 89
    iput p1, p0, Lcom/android/mms/model/RegionModel;->mLeft:I

    .line 90
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/model/Model;->notifyModelChanged(Z)V

    .line 91
    return-void
.end method

.method public setTop(I)V
    .locals 1
    .parameter "top"

    .prologue
    .line 104
    iput p1, p0, Lcom/android/mms/model/RegionModel;->mTop:I

    .line 105
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/model/Model;->notifyModelChanged(Z)V

    .line 106
    return-void
.end method

.method public setWidth(I)V
    .locals 1
    .parameter "width"

    .prologue
    .line 119
    iput p1, p0, Lcom/android/mms/model/RegionModel;->mWidth:I

    .line 120
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/model/Model;->notifyModelChanged(Z)V

    .line 121
    return-void
.end method
