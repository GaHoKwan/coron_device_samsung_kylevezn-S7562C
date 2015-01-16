.class public final Landroid/app/enterprise/lso/LSOItemCreator;
.super Ljava/lang/Object;
.source "LSOItemCreator.java"


# static fields
.field public static final LSO_ITEM_TYPE_CONTAINER:B = 0x4t

.field public static final LSO_ITEM_TYPE_IMAGE:B = 0x3t

.field public static final LSO_ITEM_TYPE_NONE:B = 0x0t

.field public static final LSO_ITEM_TYPE_SPACE:B = 0x1t

.field public static final LSO_ITEM_TYPE_TEXT:B = 0x2t

.field public static final LSO_ITEM_TYPE_WIDGET:B = 0x5t

.field private static final TAG:Ljava/lang/String; = "LSO"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createItem(B)Landroid/app/enterprise/lso/LSOItemData;
    .locals 4
    .parameter "type"

    .prologue
    .line 58
    const/4 v0, 0x0

    .line 60
    .local v0, itemData:Landroid/app/enterprise/lso/LSOItemData;
    packed-switch p0, :pswitch_data_0

    .line 87
    const-string v1, "LSO"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown ItemType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :goto_0
    return-object v0

    .line 63
    :pswitch_0
    new-instance v0, Landroid/app/enterprise/lso/LSOItemSpace;

    .end local v0           #itemData:Landroid/app/enterprise/lso/LSOItemData;
    invoke-direct {v0}, Landroid/app/enterprise/lso/LSOItemSpace;-><init>()V

    .line 64
    .restart local v0       #itemData:Landroid/app/enterprise/lso/LSOItemData;
    goto :goto_0

    .line 68
    :pswitch_1
    new-instance v0, Landroid/app/enterprise/lso/LSOItemText;

    .end local v0           #itemData:Landroid/app/enterprise/lso/LSOItemData;
    invoke-direct {v0}, Landroid/app/enterprise/lso/LSOItemText;-><init>()V

    .line 69
    .restart local v0       #itemData:Landroid/app/enterprise/lso/LSOItemData;
    goto :goto_0

    .line 73
    :pswitch_2
    new-instance v0, Landroid/app/enterprise/lso/LSOItemImage;

    .end local v0           #itemData:Landroid/app/enterprise/lso/LSOItemData;
    invoke-direct {v0}, Landroid/app/enterprise/lso/LSOItemImage;-><init>()V

    .line 74
    .restart local v0       #itemData:Landroid/app/enterprise/lso/LSOItemData;
    goto :goto_0

    .line 78
    :pswitch_3
    new-instance v0, Landroid/app/enterprise/lso/LSOItemContainer;

    .end local v0           #itemData:Landroid/app/enterprise/lso/LSOItemData;
    invoke-direct {v0}, Landroid/app/enterprise/lso/LSOItemContainer;-><init>()V

    .line 79
    .restart local v0       #itemData:Landroid/app/enterprise/lso/LSOItemData;
    goto :goto_0

    .line 83
    :pswitch_4
    new-instance v0, Landroid/app/enterprise/lso/LSOItemWidget;

    .end local v0           #itemData:Landroid/app/enterprise/lso/LSOItemData;
    invoke-direct {v0}, Landroid/app/enterprise/lso/LSOItemWidget;-><init>()V

    .line 84
    .restart local v0       #itemData:Landroid/app/enterprise/lso/LSOItemData;
    goto :goto_0

    .line 60
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static createItem(BLandroid/os/Parcel;)Landroid/app/enterprise/lso/LSOItemData;
    .locals 4
    .parameter "type"
    .parameter "source"

    .prologue
    .line 94
    const/4 v0, 0x0

    .line 96
    .local v0, itemData:Landroid/app/enterprise/lso/LSOItemData;
    packed-switch p0, :pswitch_data_0

    .line 123
    const-string v1, "LSO"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown ItemType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :goto_0
    return-object v0

    .line 99
    :pswitch_0
    new-instance v0, Landroid/app/enterprise/lso/LSOItemSpace;

    .end local v0           #itemData:Landroid/app/enterprise/lso/LSOItemData;
    invoke-direct {v0, p1}, Landroid/app/enterprise/lso/LSOItemSpace;-><init>(Landroid/os/Parcel;)V

    .line 100
    .restart local v0       #itemData:Landroid/app/enterprise/lso/LSOItemData;
    goto :goto_0

    .line 104
    :pswitch_1
    new-instance v0, Landroid/app/enterprise/lso/LSOItemText;

    .end local v0           #itemData:Landroid/app/enterprise/lso/LSOItemData;
    invoke-direct {v0, p1}, Landroid/app/enterprise/lso/LSOItemText;-><init>(Landroid/os/Parcel;)V

    .line 105
    .restart local v0       #itemData:Landroid/app/enterprise/lso/LSOItemData;
    goto :goto_0

    .line 109
    :pswitch_2
    new-instance v0, Landroid/app/enterprise/lso/LSOItemImage;

    .end local v0           #itemData:Landroid/app/enterprise/lso/LSOItemData;
    invoke-direct {v0, p1}, Landroid/app/enterprise/lso/LSOItemImage;-><init>(Landroid/os/Parcel;)V

    .line 110
    .restart local v0       #itemData:Landroid/app/enterprise/lso/LSOItemData;
    goto :goto_0

    .line 114
    :pswitch_3
    new-instance v0, Landroid/app/enterprise/lso/LSOItemContainer;

    .end local v0           #itemData:Landroid/app/enterprise/lso/LSOItemData;
    invoke-direct {v0, p1}, Landroid/app/enterprise/lso/LSOItemContainer;-><init>(Landroid/os/Parcel;)V

    .line 115
    .restart local v0       #itemData:Landroid/app/enterprise/lso/LSOItemData;
    goto :goto_0

    .line 119
    :pswitch_4
    new-instance v0, Landroid/app/enterprise/lso/LSOItemWidget;

    .end local v0           #itemData:Landroid/app/enterprise/lso/LSOItemData;
    invoke-direct {v0, p1}, Landroid/app/enterprise/lso/LSOItemWidget;-><init>(Landroid/os/Parcel;)V

    .line 120
    .restart local v0       #itemData:Landroid/app/enterprise/lso/LSOItemData;
    goto :goto_0

    .line 96
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static isTypeContainer(Landroid/app/enterprise/lso/LSOItemData;)Z
    .locals 2
    .parameter "itemData"

    .prologue
    .line 130
    const/4 v0, 0x4

    invoke-virtual {p0}, Landroid/app/enterprise/lso/LSOItemData;->getType()B

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTypeImage(Landroid/app/enterprise/lso/LSOItemData;)Z
    .locals 2
    .parameter "itemData"

    .prologue
    .line 134
    const/4 v0, 0x3

    invoke-virtual {p0}, Landroid/app/enterprise/lso/LSOItemData;->getType()B

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTypeSpace(Landroid/app/enterprise/lso/LSOItemData;)Z
    .locals 2
    .parameter "itemData"

    .prologue
    const/4 v0, 0x1

    .line 142
    invoke-virtual {p0}, Landroid/app/enterprise/lso/LSOItemData;->getType()B

    move-result v1

    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTypeText(Landroid/app/enterprise/lso/LSOItemData;)Z
    .locals 2
    .parameter "itemData"

    .prologue
    .line 138
    const/4 v0, 0x2

    invoke-virtual {p0}, Landroid/app/enterprise/lso/LSOItemData;->getType()B

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
