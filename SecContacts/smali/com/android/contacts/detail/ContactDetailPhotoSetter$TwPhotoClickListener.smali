.class final Lcom/android/contacts/detail/ContactDetailPhotoSetter$TwPhotoClickListener;
.super Ljava/lang/Object;
.source "ContactDetailPhotoSetter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactDetailPhotoSetter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TwPhotoClickListener"
.end annotation


# instance fields
.field private final mContactData:Lcom/android/contacts/ContactLoader$Result;

.field private final mContext:Landroid/content/Context;

.field private final mExpandPhotoOnClick:Z

.field private final mListener:Lcom/android/contacts/editor/PhotoActionPopup$Listener;

.field private final mPhotoBitmap:Landroid/graphics/Bitmap;

.field private final mPhotoBytes:[B

.field final synthetic this$0:Lcom/android/contacts/detail/ContactDetailPhotoSetter;


# direct methods
.method public constructor <init>(Lcom/android/contacts/detail/ContactDetailPhotoSetter;Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;Landroid/graphics/Bitmap;[BZLcom/android/contacts/editor/PhotoActionPopup$Listener;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "contactData"
    .parameter "photoBitmap"
    .parameter "photoBytes"
    .parameter "expandPhotoOnClick"
    .parameter "listener"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailPhotoSetter$TwPhotoClickListener;->this$0:Lcom/android/contacts/detail/ContactDetailPhotoSetter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p2, p0, Lcom/android/contacts/detail/ContactDetailPhotoSetter$TwPhotoClickListener;->mContext:Landroid/content/Context;

    .line 118
    iput-object p3, p0, Lcom/android/contacts/detail/ContactDetailPhotoSetter$TwPhotoClickListener;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    .line 119
    iput-object p4, p0, Lcom/android/contacts/detail/ContactDetailPhotoSetter$TwPhotoClickListener;->mPhotoBitmap:Landroid/graphics/Bitmap;

    .line 120
    iput-object p5, p0, Lcom/android/contacts/detail/ContactDetailPhotoSetter$TwPhotoClickListener;->mPhotoBytes:[B

    .line 121
    iput-boolean p6, p0, Lcom/android/contacts/detail/ContactDetailPhotoSetter$TwPhotoClickListener;->mExpandPhotoOnClick:Z

    .line 122
    iput-object p7, p0, Lcom/android/contacts/detail/ContactDetailPhotoSetter$TwPhotoClickListener;->mListener:Lcom/android/contacts/editor/PhotoActionPopup$Listener;

    .line 123
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailPhotoSetter$TwPhotoClickListener;->mListener:Lcom/android/contacts/editor/PhotoActionPopup$Listener;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailPhotoSetter$TwPhotoClickListener;->this$0:Lcom/android/contacts/detail/ContactDetailPhotoSetter;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailPhotoSetter$TwPhotoClickListener;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailPhotoSetter$TwPhotoClickListener;->mListener:Lcom/android/contacts/editor/PhotoActionPopup$Listener;

    #calls: Lcom/android/contacts/detail/ContactDetailPhotoSetter;->showPhotoActionPopup(Landroid/content/Context;Landroid/view/View;Lcom/android/contacts/editor/PhotoActionPopup$Listener;)V
    invoke-static {v0, v1, p1, v2}, Lcom/android/contacts/detail/ContactDetailPhotoSetter;->access$000(Lcom/android/contacts/detail/ContactDetailPhotoSetter;Landroid/content/Context;Landroid/view/View;Lcom/android/contacts/editor/PhotoActionPopup$Listener;)V

    .line 130
    :cond_0
    return-void
.end method
