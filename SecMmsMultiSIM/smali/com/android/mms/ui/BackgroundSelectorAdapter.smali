.class public Lcom/android/mms/ui/BackgroundSelectorAdapter;
.super Lcom/android/mms/ui/IconGridAdapter;
.source "BackgroundSelectorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/BackgroundSelectorAdapter$AttachmentListItem;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 34
    invoke-static {p1}, Lcom/android/mms/ui/BackgroundSelectorAdapter;->getData(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/IconGridAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 35
    return-void
.end method

.method private static addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;III)Z
    .locals 2
    .parameter "context"
    .parameter "packageName"
    .parameter
    .parameter "menuId"
    .parameter "icondId"
    .parameter "item"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/IconGridAdapter$IconGridItem;",
            ">;III)Z"
        }
    .end annotation

    .prologue
    .line 49
    .local p2, data:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/IconGridAdapter$IconGridItem;>;"
    invoke-static {p0, p1}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 51
    .local v0, appIcon:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1, v0, p5}, Lcom/android/mms/ui/BackgroundSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    .line 53
    const/4 v1, 0x1

    .line 57
    .end local v0           #appIcon:Landroid/graphics/drawable/Drawable;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
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
            "Lcom/android/mms/ui/IconGridAdapter$IconGridItem;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, data:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/IconGridAdapter$IconGridItem;>;"
    new-instance v0, Lcom/android/mms/ui/BackgroundSelectorAdapter$AttachmentListItem;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/mms/ui/BackgroundSelectorAdapter$AttachmentListItem;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    .line 62
    .local v0, temp:Lcom/android/mms/ui/BackgroundSelectorAdapter$AttachmentListItem;
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    return-void
.end method

.method protected static getData(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/IconGridAdapter$IconGridItem;",
            ">;"
        }
    .end annotation

    .prologue
    const v3, 0x7f0a00d5

    const v4, 0x7f020124

    const/4 v5, 0x0

    .line 38
    new-instance v2, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 39
    .local v2, data:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/IconGridAdapter$IconGridItem;>;"
    const-string v1, "com.sec.android.gallery3d"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/BackgroundSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    const-string v1, "com.cooliris.media"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/BackgroundSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    const-string v1, "com.android.gallery3d"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/BackgroundSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;III)Z

    .line 44
    :cond_0
    const v0, 0x7f0a00d6

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f020123

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v2, v0, v1, v3}, Lcom/android/mms/ui/BackgroundSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    .line 45
    return-object v2
.end method


# virtual methods
.method public buttonToCommand(I)I
    .locals 2
    .parameter "whichButton"

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/BackgroundSelectorAdapter$AttachmentListItem;

    .line 67
    .local v0, item:Lcom/android/mms/ui/BackgroundSelectorAdapter$AttachmentListItem;
    invoke-virtual {v0}, Lcom/android/mms/ui/BackgroundSelectorAdapter$AttachmentListItem;->getCommand()I

    move-result v1

    return v1
.end method
