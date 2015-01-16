.class public Landroid/app/enterprise/lso/LSOItemSpace;
.super Landroid/app/enterprise/lso/LSOItemData;
.source "LSOItemSpace.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/app/enterprise/lso/LSOItemData;-><init>(B)V

    .line 50
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 57
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/app/enterprise/lso/LSOItemData;-><init>(B)V

    .line 58
    invoke-virtual {p0, p1, p2}, Landroid/app/enterprise/lso/LSOItemData;->setDimension(II)V

    .line 59
    return-void
.end method

.method public constructor <init>(IIF)V
    .locals 1
    .parameter "width"
    .parameter "height"
    .parameter "weight"

    .prologue
    .line 62
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/app/enterprise/lso/LSOItemData;-><init>(B)V

    .line 63
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/enterprise/lso/LSOItemData;->setDimension(IIF)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "parcel"

    .prologue
    .line 53
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/app/enterprise/lso/LSOItemData;-><init>(BLandroid/os/Parcel;)V

    .line 54
    return-void
.end method


# virtual methods
.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 0
    .parameter "parcel"

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/app/enterprise/lso/LSOItemData;->readFromParcel(Landroid/os/Parcel;)V

    .line 74
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpaceView "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Landroid/app/enterprise/lso/LSOItemData;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .parameter "parcel"
    .parameter "flags"

    .prologue
    .line 68
    invoke-super {p0, p1, p2}, Landroid/app/enterprise/lso/LSOItemData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 69
    return-void
.end method
