.class public Lcom/android/mms/ui/ReplaceSelectorAdapter;
.super Lcom/android/mms/ui/IconListAdapter;
.source "ReplaceSelectorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/ReplaceSelectorAdapter$ReplaceListItem;
    }
.end annotation


# static fields
.field public static final ADD_PICTURE:I = 0x0

.field public static final ADD_VIDEO:I = 0x2

.field public static final CAPTURE_PICTURE:I = 0x1

.field public static final CAPTURE_VIDEO:I = 0x3


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .parameter "context"
    .parameter "isVideo"

    .prologue
    .line 39
    invoke-static {p1, p2}, Lcom/android/mms/ui/ReplaceSelectorAdapter;->getData(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/IconListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 40
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
    .line 60
    .local p0, data:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/IconListAdapter$IconListItem;>;"
    new-instance v0, Lcom/android/mms/ui/ReplaceSelectorAdapter$ReplaceListItem;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/mms/ui/ReplaceSelectorAdapter$ReplaceListItem;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    .line 61
    .local v0, temp:Lcom/android/mms/ui/ReplaceSelectorAdapter$ReplaceListItem;
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    return-void
.end method

.method protected static getData(Landroid/content/Context;Z)Ljava/util/List;
    .locals 4
    .parameter "context"
    .parameter "isVideo"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/IconListAdapter$IconListItem;",
            ">;"
        }
    .end annotation

    .prologue
    const v2, 0x7f0a018b

    const/4 v3, 0x0

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 49
    .local v0, data:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/IconListAdapter$IconListItem;>;"
    if-eqz p1, :cond_0

    .line 50
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v0, v1, v3, v2}, Lcom/android/mms/ui/ReplaceSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    .line 51
    const v1, 0x7f0a00d8

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v0, v1, v3, v2}, Lcom/android/mms/ui/ReplaceSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    .line 56
    :goto_0
    return-object v0

    .line 53
    :cond_0
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v3, v2}, Lcom/android/mms/ui/ReplaceSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    .line 54
    const v1, 0x7f0a00d6

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v3, v2}, Lcom/android/mms/ui/ReplaceSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    goto :goto_0
.end method


# virtual methods
.method public buttonToCommand(I)I
    .locals 2
    .parameter "whichButton"

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/ReplaceSelectorAdapter$ReplaceListItem;

    .line 44
    .local v0, item:Lcom/android/mms/ui/ReplaceSelectorAdapter$ReplaceListItem;
    invoke-virtual {v0}, Lcom/android/mms/ui/ReplaceSelectorAdapter$ReplaceListItem;->getCommand()I

    move-result v1

    return v1
.end method
