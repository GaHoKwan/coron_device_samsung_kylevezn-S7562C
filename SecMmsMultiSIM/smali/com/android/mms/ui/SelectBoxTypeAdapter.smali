.class public Lcom/android/mms/ui/SelectBoxTypeAdapter;
.super Lcom/android/mms/ui/IconListAdapter;
.source "SelectBoxTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/SelectBoxTypeAdapter$FolderBoxListItem;
    }
.end annotation


# static fields
.field public static final MOVE_DRAFT:I = 0x3

.field public static final MOVE_INBOX:I = 0x0

.field public static final MOVE_OUTBOX:I = 0x2

.field public static final MOVE_SENTBOX:I = 0x1

.field public static final MOVE_WAPPUSH:I = 0x4


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 28
    invoke-static {p1}, Lcom/android/mms/ui/SelectBoxTypeAdapter;->getData(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/IconListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 29
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
    .line 66
    .local p0, data:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/IconListAdapter$IconListItem;>;"
    new-instance v0, Lcom/android/mms/ui/SelectBoxTypeAdapter$FolderBoxListItem;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/mms/ui/SelectBoxTypeAdapter$FolderBoxListItem;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    .line 67
    .local v0, temp:Lcom/android/mms/ui/SelectBoxTypeAdapter$FolderBoxListItem;
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    return-void
.end method

.method protected static getData(Landroid/content/Context;)Ljava/util/List;
    .locals 13
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/IconListAdapter$IconListItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    const/4 v6, 0x5

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 39
    .local v0, data:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/IconListAdapter$IconListItem;>;"
    invoke-static {p0, v9, v8}, Lcom/android/mms/ui/BoxListFrame;->getListTitle(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v2

    .line 40
    .local v2, inbox:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0201bc

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {v0, v2, v6, v9}, Lcom/android/mms/ui/SelectBoxTypeAdapter;->addItem(Ljava/util/List;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    .line 43
    invoke-static {p0, v8, v8}, Lcom/android/mms/ui/BoxListFrame;->getListTitle(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v5

    .line 44
    .local v5, sentbox:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0201be

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {v0, v5, v6, v8}, Lcom/android/mms/ui/SelectBoxTypeAdapter;->addItem(Ljava/util/List;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    .line 47
    invoke-static {p0, v10, v8}, Lcom/android/mms/ui/BoxListFrame;->getListTitle(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v3

    .line 48
    .local v3, outbox:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0201bd

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {v0, v3, v6, v10}, Lcom/android/mms/ui/SelectBoxTypeAdapter;->addItem(Ljava/util/List;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    .line 51
    invoke-static {p0, v11, v8}, Lcom/android/mms/ui/BoxListFrame;->getListTitle(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, draft:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0201bb

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {v0, v1, v6, v11}, Lcom/android/mms/ui/SelectBoxTypeAdapter;->addItem(Ljava/util/List;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    .line 56
    invoke-static {p0, v12, v8}, Lcom/android/mms/ui/BoxListFrame;->getListTitle(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v4

    .line 57
    .local v4, push:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0201bf

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {v0, v4, v6, v12}, Lcom/android/mms/ui/SelectBoxTypeAdapter;->addItem(Ljava/util/List;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    .line 61
    return-object v0
.end method


# virtual methods
.method public buttonToCommand(I)I
    .locals 2
    .parameter "whichButton"

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/SelectBoxTypeAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/SelectBoxTypeAdapter$FolderBoxListItem;

    .line 33
    .local v0, item:Lcom/android/mms/ui/SelectBoxTypeAdapter$FolderBoxListItem;
    invoke-virtual {v0}, Lcom/android/mms/ui/SelectBoxTypeAdapter$FolderBoxListItem;->getCommand()I

    move-result v1

    return v1
.end method
