.class Lcom/android/contacts/detail/ContactDetailDisplayUtils$DefaultImageGetter;
.super Ljava/lang/Object;
.source "ContactDetailDisplayUtils.java"

# interfaces
.implements Landroid/text/Html$ImageGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactDetailDisplayUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultImageGetter"
.end annotation


# instance fields
.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;)V
    .locals 0
    .parameter "packageManager"

    .prologue
    .line 494
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 495
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailDisplayUtils$DefaultImageGetter;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 496
    return-void
.end method

.method private getResourceDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "resources"
    .parameter "resId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 547
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 548
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 549
    return-object v0
.end method

.method private getResourcesForResourceName(Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 4
    .parameter "packageName"

    .prologue
    .line 555
    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailDisplayUtils$DefaultImageGetter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 558
    :goto_0
    return-object v1

    .line 556
    :catch_0
    move-exception v0

    .line 557
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "ContactDetailDisplayUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 10
    .parameter "source"

    .prologue
    const/4 v7, 0x0

    .line 503
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 508
    .local v6, uri:Landroid/net/Uri;
    const-string v8, "res"

    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 509
    const-string v8, "ContactDetailDisplayUtils"

    const-string v9, "Image source does not correspond to a resource"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    .end local v6           #uri:Landroid/net/Uri;
    :goto_0
    return-object v7

    .line 504
    :catch_0
    move-exception v0

    .line 505
    .local v0, e:Ljava/lang/Throwable;
    const-string v8, "ContactDetailDisplayUtils"

    const-string v9, "Could not parse image source"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 513
    .end local v0           #e:Ljava/lang/Throwable;
    .restart local v6       #uri:Landroid/net/Uri;
    :cond_0
    invoke-virtual {v6}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    .line 515
    .local v2, packageName:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/contacts/detail/ContactDetailDisplayUtils$DefaultImageGetter;->getResourcesForResourceName(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v5

    .line 516
    .local v5, resources:Landroid/content/res/Resources;
    if-nez v5, :cond_1

    .line 517
    const-string v8, "ContactDetailDisplayUtils"

    const-string v9, "Could not parse image source"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 521
    :cond_1
    invoke-virtual {v6}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    .line 522
    .local v3, pathSegments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_2

    .line 523
    const-string v8, "ContactDetailDisplayUtils"

    const-string v9, "Could not parse image source"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 527
    :cond_2
    const/4 v8, 0x0

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 528
    .local v1, name:Ljava/lang/String;
    const-string v8, "drawable"

    invoke-virtual {v5, v1, v8, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 530
    .local v4, resId:I
    if-nez v4, :cond_3

    .line 532
    const-string v8, "ContactDetailDisplayUtils"

    const-string v9, "Cannot resolve resource identifier"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 537
    :cond_3
    :try_start_1
    invoke-direct {p0, v5, v4}, Lcom/android/contacts/detail/ContactDetailDisplayUtils$DefaultImageGetter;->getResourceDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    goto :goto_0

    .line 538
    :catch_1
    move-exception v0

    .line 539
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    const-string v8, "ContactDetailDisplayUtils"

    const-string v9, "Resource not found"

    invoke-static {v8, v9, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
