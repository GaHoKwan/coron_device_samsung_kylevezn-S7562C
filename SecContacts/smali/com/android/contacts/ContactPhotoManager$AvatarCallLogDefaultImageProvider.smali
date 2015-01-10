.class Lcom/android/contacts/ContactPhotoManager$AvatarCallLogDefaultImageProvider;
.super Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;
.source "ContactPhotoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ContactPhotoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AvatarCallLogDefaultImageProvider"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 212
    invoke-direct {p0}, Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/ContactPhotoManager$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 212
    invoke-direct {p0}, Lcom/android/contacts/ContactPhotoManager$AvatarCallLogDefaultImageProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public applyDefaultImage(Landroid/widget/ImageView;IZJ)V
    .locals 1
    .parameter "view"
    .parameter "extent"
    .parameter "darkTheme"
    .parameter "contactId"

    .prologue
    .line 215
    const/4 v0, 0x0

    invoke-static {v0, p3, p4, p5}, Lcom/android/contacts/ContactPhotoManager;->getDefaultCallDetailAvatarResId(ZZJ)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 216
    return-void
.end method
