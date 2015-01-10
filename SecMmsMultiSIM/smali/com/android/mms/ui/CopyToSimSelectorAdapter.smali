.class public Lcom/android/mms/ui/CopyToSimSelectorAdapter;
.super Lcom/android/mms/ui/IconListAdapter;
.source "CopyToSimSelectorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/CopyToSimSelectorAdapter$CopyToSimListItem;
    }
.end annotation


# static fields
.field public static final COPY_TO_SIM_1:I = 0x0

.field public static final COPY_TO_SIM_2:I = 0x1


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;)V
    .locals 1
    .parameter "context"
    .parameter "msgItem"

    .prologue
    .line 44
    invoke-static {p2, p1}, Lcom/android/mms/ui/CopyToSimSelectorAdapter;->getData(Lcom/android/mms/ui/MessageItem;Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/IconListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 45
    return-void
.end method

.method protected static addItem(Ljava/util/List;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V
    .locals 1
    .parameter
    .parameter "title"
    .parameter "resource"
    .parameter "command"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/IconListAdapter$IconListItem;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, data:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/IconListAdapter$IconListItem;>;"
    new-instance v0, Lcom/android/mms/ui/CopyToSimSelectorAdapter$CopyToSimListItem;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/mms/ui/CopyToSimSelectorAdapter$CopyToSimListItem;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    .line 65
    .local v0, temp:Lcom/android/mms/ui/CopyToSimSelectorAdapter$CopyToSimListItem;
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    return-void
.end method

.method protected static getData(Lcom/android/mms/ui/MessageItem;Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .parameter "msgItem"
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/mms/ui/MessageItem;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/IconListAdapter$IconListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 55
    .local v0, data:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/IconListAdapter$IconListItem;>;"
    const/4 v1, 0x0

    .local v1, simSlotNum:I
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 56
    invoke-static {p1, v1}, Lcom/android/mms/ui/MessageUtils;->getSimName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {p1, v1, v4}, Lcom/android/mms/ui/MessageUtils;->getSimIcon(Landroid/content/Context;II)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    add-int/lit8 v4, v1, 0x0

    invoke-static {v0, v2, v3, v4}, Lcom/android/mms/ui/CopyToSimSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    .line 55
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 59
    :cond_0
    return-object v0
.end method


# virtual methods
.method public buttonToCommand(I)I
    .locals 2
    .parameter "whichButton"

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/CopyToSimSelectorAdapter$CopyToSimListItem;

    .line 49
    .local v0, item:Lcom/android/mms/ui/CopyToSimSelectorAdapter$CopyToSimListItem;
    invoke-virtual {v0}, Lcom/android/mms/ui/CopyToSimSelectorAdapter$CopyToSimListItem;->getCommand()I

    move-result v1

    return v1
.end method
