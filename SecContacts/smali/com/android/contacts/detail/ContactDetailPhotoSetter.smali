.class public Lcom/android/contacts/detail/ContactDetailPhotoSetter;
.super Lcom/android/contacts/util/ImageViewDrawableSetter;
.source "ContactDetailPhotoSetter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/detail/ContactDetailPhotoSetter$TwPhotoClickListener;,
        Lcom/android/contacts/detail/ContactDetailPhotoSetter$PhotoClickListener;
    }
.end annotation


# instance fields
.field private mPhotoActionPopUp:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/contacts/util/ImageViewDrawableSetter;-><init>()V

    .line 106
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/detail/ContactDetailPhotoSetter;Landroid/content/Context;Landroid/view/View;Lcom/android/contacts/editor/PhotoActionPopup$Listener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/detail/ContactDetailPhotoSetter;->showPhotoActionPopup(Landroid/content/Context;Landroid/view/View;Lcom/android/contacts/editor/PhotoActionPopup$Listener;)V

    return-void
.end method

.method private setupClickListener(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;Landroid/graphics/Bitmap;ZLcom/android/contacts/editor/PhotoActionPopup$Listener;)Landroid/view/View$OnClickListener;
    .locals 9
    .parameter "context"
    .parameter "contactData"
    .parameter "bitmap"
    .parameter "expandPhotoOnClick"
    .parameter "listener"

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/android/contacts/util/ImageViewDrawableSetter;->getTarget()Landroid/widget/ImageView;

    move-result-object v8

    .line 136
    .local v8, target:Landroid/widget/ImageView;
    if-nez v8, :cond_0

    const/4 v0, 0x0

    .line 142
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/contacts/detail/ContactDetailPhotoSetter$TwPhotoClickListener;

    invoke-virtual {p0}, Lcom/android/contacts/util/ImageViewDrawableSetter;->getCompressedImage()[B

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/contacts/detail/ContactDetailPhotoSetter$TwPhotoClickListener;-><init>(Lcom/android/contacts/detail/ContactDetailPhotoSetter;Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;Landroid/graphics/Bitmap;[BZLcom/android/contacts/editor/PhotoActionPopup$Listener;)V

    goto :goto_0
.end method

.method private showPhotoActionPopup(Landroid/content/Context;Landroid/view/View;Lcom/android/contacts/editor/PhotoActionPopup$Listener;)V
    .locals 2
    .parameter "context"
    .parameter "photoView"
    .parameter "listener"

    .prologue
    .line 148
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailPhotoSetter;->mPhotoActionPopUp:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailPhotoSetter;->mPhotoActionPopUp:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 149
    :cond_0
    const/4 v1, 0x4

    invoke-static {p1, p2, p3, v1}, Lcom/android/contacts/editor/PhotoActionPopup;->createPopupMenu(Landroid/content/Context;Landroid/view/View;Lcom/android/contacts/editor/PhotoActionPopup$Listener;I)Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/detail/ContactDetailPhotoSetter;->mPhotoActionPopUp:Landroid/app/AlertDialog;

    .line 151
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_2

    move-object v0, p1

    .line 152
    check-cast v0, Landroid/app/Activity;

    .line 153
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 159
    .end local v0           #activity:Landroid/app/Activity;
    :cond_1
    :goto_0
    return-void

    .line 157
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailPhotoSetter;->mPhotoActionPopUp:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method


# virtual methods
.method public setupContactPhotoForClick(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;Landroid/widget/ImageView;ZLcom/android/contacts/editor/PhotoActionPopup$Listener;)Landroid/view/View$OnClickListener;
    .locals 6
    .parameter "context"
    .parameter "contactData"
    .parameter "photoView"
    .parameter "expandPhotoOnClick"
    .parameter "listener"

    .prologue
    .line 47
    invoke-virtual {p2}, Lcom/android/contacts/ContactLoader$Result;->getId()J

    move-result-wide v0

    invoke-virtual {p0, p3, v0, v1}, Lcom/android/contacts/util/ImageViewDrawableSetter;->setTarget(Landroid/widget/ImageView;J)V

    .line 48
    invoke-virtual {p2}, Lcom/android/contacts/ContactLoader$Result;->getPhotoBinaryData()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/util/ImageViewDrawableSetter;->setCompressedImage([B)Landroid/graphics/Bitmap;

    move-result-object v3

    .local v3, bitmap:Landroid/graphics/Bitmap;
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move-object v5, p5

    .line 49
    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/detail/ContactDetailPhotoSetter;->setupClickListener(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;Landroid/graphics/Bitmap;ZLcom/android/contacts/editor/PhotoActionPopup$Listener;)Landroid/view/View$OnClickListener;

    move-result-object v0

    return-object v0
.end method
