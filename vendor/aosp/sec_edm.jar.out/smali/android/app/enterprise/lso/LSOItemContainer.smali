.class public Landroid/app/enterprise/lso/LSOItemContainer;
.super Landroid/app/enterprise/lso/LSOItemData;
.source "LSOItemContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/enterprise/lso/LSOItemContainer$ORIENTATION;
    }
.end annotation


# static fields
.field public static final LSO_FIELD_BG:I = 0x100

.field public static final LSO_FIELD_ORIENTATION:I = 0x80


# instance fields
.field private bgImagePath:Ljava/lang/String;

.field private childObj:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/lso/LSOItemData;",
            ">;"
        }
    .end annotation
.end field

.field private orientation:Landroid/app/enterprise/lso/LSOItemContainer$ORIENTATION;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/app/enterprise/lso/LSOItemData;-><init>(B)V

    .line 64
    sget-object v0, Landroid/app/enterprise/lso/LSOItemContainer$ORIENTATION;->VERTICAL:Landroid/app/enterprise/lso/LSOItemContainer$ORIENTATION;

    iput-object v0, p0, Landroid/app/enterprise/lso/LSOItemContainer;->orientation:Landroid/app/enterprise/lso/LSOItemContainer$ORIENTATION;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/enterprise/lso/LSOItemContainer;->childObj:Ljava/util/List;

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "parcel"

    .prologue
    .line 69
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/app/enterprise/lso/LSOItemData;-><init>(B)V

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/enterprise/lso/LSOItemContainer;->childObj:Ljava/util/List;

    .line 71
    invoke-virtual {p0, p1}, Landroid/app/enterprise/lso/LSOItemContainer;->readFromParcel(Landroid/os/Parcel;)V

    .line 72
    return-void
.end method


# virtual methods
.method public addItem(Landroid/app/enterprise/lso/LSOItemData;)Z
    .locals 1
    .parameter "aObj"

    .prologue
    .line 93
    iget-object v0, p0, Landroid/app/enterprise/lso/LSOItemContainer;->childObj:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getBGImagePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Landroid/app/enterprise/lso/LSOItemContainer;->bgImagePath:Ljava/lang/String;

    return-object v0
.end method

.method public getItem(I)Landroid/app/enterprise/lso/LSOItemData;
    .locals 1
    .parameter "atIndex"

    .prologue
    .line 101
    iget-object v0, p0, Landroid/app/enterprise/lso/LSOItemContainer;->childObj:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/lso/LSOItemData;

    return-object v0
.end method

.method public getNumItems()I
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Landroid/app/enterprise/lso/LSOItemContainer;->childObj:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getOrientation()Landroid/app/enterprise/lso/LSOItemContainer$ORIENTATION;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Landroid/app/enterprise/lso/LSOItemContainer;->orientation:Landroid/app/enterprise/lso/LSOItemContainer$ORIENTATION;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 5
    .parameter "parcel"

    .prologue
    .line 127
    invoke-super {p0, p1}, Landroid/app/enterprise/lso/LSOItemData;->readFromParcel(Landroid/os/Parcel;)V

    .line 128
    const/16 v3, 0x80

    invoke-virtual {p0, p1, v3}, Landroid/app/enterprise/lso/LSOItemData;->readByteFromParcel(Landroid/os/Parcel;I)B

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Landroid/app/enterprise/lso/LSOItemContainer$ORIENTATION;->VERTICAL:Landroid/app/enterprise/lso/LSOItemContainer$ORIENTATION;

    :goto_0
    iput-object v3, p0, Landroid/app/enterprise/lso/LSOItemContainer;->orientation:Landroid/app/enterprise/lso/LSOItemContainer$ORIENTATION;

    .line 130
    const/16 v3, 0x100

    invoke-virtual {p0, p1, v3}, Landroid/app/enterprise/lso/LSOItemData;->readStringFromParcel(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/app/enterprise/lso/LSOItemContainer;->bgImagePath:Ljava/lang/String;

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 132
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 133
    sget-object v3, Landroid/app/enterprise/lso/LSOItemContainer;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/lso/LSOItemData;

    .line 134
    .local v1, itemData:Landroid/app/enterprise/lso/LSOItemData;
    if-nez v1, :cond_1

    .line 135
    new-instance v3, Landroid/os/ParcelFormatException;

    const-string v4, "Parcel format exception"

    invoke-direct {v3, v4}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 128
    .end local v0           #i:I
    .end local v1           #itemData:Landroid/app/enterprise/lso/LSOItemData;
    .end local v2           #size:I
    :cond_0
    sget-object v3, Landroid/app/enterprise/lso/LSOItemContainer$ORIENTATION;->HORIZONTAL:Landroid/app/enterprise/lso/LSOItemContainer$ORIENTATION;

    goto :goto_0

    .line 137
    .restart local v0       #i:I
    .restart local v1       #itemData:Landroid/app/enterprise/lso/LSOItemData;
    .restart local v2       #size:I
    :cond_1
    iget-object v3, p0, Landroid/app/enterprise/lso/LSOItemContainer;->childObj:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 139
    .end local v1           #itemData:Landroid/app/enterprise/lso/LSOItemData;
    :cond_2
    return-void
.end method

.method public removeAll()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Landroid/app/enterprise/lso/LSOItemContainer;->childObj:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 110
    return-void
.end method

.method public removeItem(I)Landroid/app/enterprise/lso/LSOItemData;
    .locals 1
    .parameter "atIndex"

    .prologue
    .line 105
    iget-object v0, p0, Landroid/app/enterprise/lso/LSOItemContainer;->childObj:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/lso/LSOItemData;

    return-object v0
.end method

.method public setBGImage(Ljava/lang/String;)V
    .locals 1
    .parameter "imagePath"

    .prologue
    .line 84
    iput-object p1, p0, Landroid/app/enterprise/lso/LSOItemContainer;->bgImagePath:Ljava/lang/String;

    .line 85
    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Landroid/app/enterprise/lso/LSOItemData;->updateFieldFlag(I)V

    .line 86
    return-void
.end method

.method public setOrientation(Landroid/app/enterprise/lso/LSOItemContainer$ORIENTATION;)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 75
    iput-object p1, p0, Landroid/app/enterprise/lso/LSOItemContainer;->orientation:Landroid/app/enterprise/lso/LSOItemContainer$ORIENTATION;

    .line 76
    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Landroid/app/enterprise/lso/LSOItemData;->updateFieldFlag(I)V

    .line 77
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ContainerView "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Landroid/app/enterprise/lso/LSOItemData;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, str:Ljava/lang/String;
    const/16 v1, 0x100

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BG_IMAGE:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/app/enterprise/lso/LSOItemContainer;->bgImagePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/app/enterprise/lso/LSOItemData;->toString(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    const/16 v2, 0x80

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Orientation:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Landroid/app/enterprise/lso/LSOItemContainer;->orientation:Landroid/app/enterprise/lso/LSOItemContainer$ORIENTATION;

    sget-object v4, Landroid/app/enterprise/lso/LSOItemContainer$ORIENTATION;->VERTICAL:Landroid/app/enterprise/lso/LSOItemContainer$ORIENTATION;

    if-ne v1, v4, :cond_0

    const-string v1, "VERTICAL"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v2, v1}, Landroid/app/enterprise/lso/LSOItemData;->toString(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 153
    return-object v0

    .line 150
    :cond_0
    const-string v1, "HORIZONTAL"

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .parameter "parcel"
    .parameter "flags"

    .prologue
    .line 114
    invoke-super {p0, p1, p2}, Landroid/app/enterprise/lso/LSOItemData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 115
    const/16 v3, 0x80

    iget-object v2, p0, Landroid/app/enterprise/lso/LSOItemContainer;->orientation:Landroid/app/enterprise/lso/LSOItemContainer$ORIENTATION;

    sget-object v4, Landroid/app/enterprise/lso/LSOItemContainer$ORIENTATION;->VERTICAL:Landroid/app/enterprise/lso/LSOItemContainer$ORIENTATION;

    if-ne v2, v4, :cond_0

    const/4 v2, 0x0

    :goto_0
    int-to-byte v2, v2

    invoke-virtual {p0, p1, v3, v2}, Landroid/app/enterprise/lso/LSOItemData;->writeToParcel(Landroid/os/Parcel;IB)V

    .line 117
    const/16 v2, 0x100

    iget-object v3, p0, Landroid/app/enterprise/lso/LSOItemContainer;->bgImagePath:Ljava/lang/String;

    invoke-virtual {p0, p1, v2, v3}, Landroid/app/enterprise/lso/LSOItemData;->writeToParcel(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 118
    iget-object v2, p0, Landroid/app/enterprise/lso/LSOItemContainer;->childObj:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Landroid/app/enterprise/lso/LSOItemContainer;->childObj:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 120
    iget-object v2, p0, Landroid/app/enterprise/lso/LSOItemContainer;->childObj:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/lso/LSOItemData;

    .line 121
    .local v1, itemData:Landroid/app/enterprise/lso/LSOItemData;
    invoke-virtual {v1, p1, p2}, Landroid/app/enterprise/lso/LSOItemData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 115
    .end local v0           #i:I
    .end local v1           #itemData:Landroid/app/enterprise/lso/LSOItemData;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 123
    .restart local v0       #i:I
    :cond_1
    return-void
.end method
