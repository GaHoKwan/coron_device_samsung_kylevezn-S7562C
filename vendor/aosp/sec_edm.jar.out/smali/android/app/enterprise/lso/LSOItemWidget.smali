.class public Landroid/app/enterprise/lso/LSOItemWidget;
.super Landroid/app/enterprise/lso/LSOItemData;
.source "LSOItemWidget.java"


# static fields
.field public static final LSO_FIELD_PACKAGE_NAME:I = 0x80


# instance fields
.field private packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/app/enterprise/lso/LSOItemData;-><init>(B)V

    .line 54
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 61
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/app/enterprise/lso/LSOItemData;-><init>(B)V

    .line 62
    invoke-virtual {p0, p1, p2}, Landroid/app/enterprise/lso/LSOItemData;->setDimension(II)V

    .line 63
    return-void
.end method

.method public constructor <init>(IIF)V
    .locals 1
    .parameter "width"
    .parameter "height"
    .parameter "weight"

    .prologue
    .line 66
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/app/enterprise/lso/LSOItemData;-><init>(B)V

    .line 67
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/enterprise/lso/LSOItemData;->setDimension(IIF)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "parcel"

    .prologue
    .line 57
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Landroid/app/enterprise/lso/LSOItemData;-><init>(BLandroid/os/Parcel;)V

    .line 58
    return-void
.end method


# virtual methods
.method public getWidget()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Landroid/app/enterprise/lso/LSOItemWidget;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "parcel"

    .prologue
    .line 87
    invoke-super {p0, p1}, Landroid/app/enterprise/lso/LSOItemData;->readFromParcel(Landroid/os/Parcel;)V

    .line 88
    const/16 v0, 0x80

    invoke-virtual {p0, p1, v0}, Landroid/app/enterprise/lso/LSOItemData;->readStringFromParcel(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/lso/LSOItemWidget;->packageName:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setWidget(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .line 75
    iput-object p1, p0, Landroid/app/enterprise/lso/LSOItemWidget;->packageName:Ljava/lang/String;

    .line 76
    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Landroid/app/enterprise/lso/LSOItemData;->updateFieldFlag(I)V

    .line 77
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CustomWidget: "

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
    .locals 2
    .parameter "parcel"
    .parameter "flags"

    .prologue
    .line 81
    invoke-super {p0, p1, p2}, Landroid/app/enterprise/lso/LSOItemData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 82
    const/16 v0, 0x80

    iget-object v1, p0, Landroid/app/enterprise/lso/LSOItemWidget;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/enterprise/lso/LSOItemData;->writeToParcel(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 83
    return-void
.end method
