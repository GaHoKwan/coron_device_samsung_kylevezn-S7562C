.class public abstract Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;
.super Ljava/lang/Object;
.source "PhotoSelectionHandler.java"

# interfaces
.implements Lcom/android/contacts/editor/PhotoActionPopup$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/PhotoSelectionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "PhotoActionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/detail/PhotoSelectionHandler;


# direct methods
.method public constructor <init>(Lcom/android/contacts/detail/PhotoSelectionHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 400
    iput-object p1, p0, Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;->this$0:Lcom/android/contacts/detail/PhotoSelectionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getCurrentPhotoFile()Ljava/lang/String;
.end method

.method public abstract onPhotoSelected(Landroid/graphics/Bitmap;)V
.end method

.method public abstract onPhotoSelectionDismissed()V
.end method

.method public onPickFromGalleryChosen()V
    .locals 4

    .prologue
    .line 426
    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;->this$0:Lcom/android/contacts/detail/PhotoSelectionHandler;

    invoke-static {}, Lcom/android/contacts/util/ContactPhotoUtils;->generateTempPhotoFileName()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/contacts/detail/PhotoSelectionHandler;->startPickFromGalleryActivity(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/contacts/detail/PhotoSelectionHandler;->access$100(Lcom/android/contacts/detail/PhotoSelectionHandler;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 431
    :goto_0
    return-void

    .line 427
    :catch_0
    move-exception v0

    .line 428
    .local v0, e:Landroid/content/ActivityNotFoundException;
    iget-object v1, p0, Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;->this$0:Lcom/android/contacts/detail/PhotoSelectionHandler;

    iget-object v1, v1, Lcom/android/contacts/detail/PhotoSelectionHandler;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0064

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onPickFromSNote()V
    .locals 4

    .prologue
    .line 438
    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;->this$0:Lcom/android/contacts/detail/PhotoSelectionHandler;

    #calls: Lcom/android/contacts/detail/PhotoSelectionHandler;->startPickFromSNoteActivity()V
    invoke-static {v1}, Lcom/android/contacts/detail/PhotoSelectionHandler;->access$200(Lcom/android/contacts/detail/PhotoSelectionHandler;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 443
    :goto_0
    return-void

    .line 439
    :catch_0
    move-exception v0

    .line 440
    .local v0, e:Landroid/content/ActivityNotFoundException;
    iget-object v1, p0, Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;->this$0:Lcom/android/contacts/detail/PhotoSelectionHandler;

    iget-object v1, v1, Lcom/android/contacts/detail/PhotoSelectionHandler;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0064

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onPickFromTaggedPicture()V
    .locals 4

    .prologue
    .line 450
    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;->this$0:Lcom/android/contacts/detail/PhotoSelectionHandler;

    invoke-static {}, Lcom/android/contacts/util/ContactPhotoUtils;->generateTempPhotoFileName()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/contacts/detail/PhotoSelectionHandler;->startPickFromTaggedPictureActivity(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/contacts/detail/PhotoSelectionHandler;->access$300(Lcom/android/contacts/detail/PhotoSelectionHandler;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 455
    :goto_0
    return-void

    .line 451
    :catch_0
    move-exception v0

    .line 452
    .local v0, e:Landroid/content/ActivityNotFoundException;
    iget-object v1, p0, Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;->this$0:Lcom/android/contacts/detail/PhotoSelectionHandler;

    iget-object v1, v1, Lcom/android/contacts/detail/PhotoSelectionHandler;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0064

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onRemovePictureChosen()V
    .locals 0

    .prologue
    .line 409
    return-void
.end method

.method public onTakePhotoChosen()V
    .locals 4

    .prologue
    .line 415
    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;->this$0:Lcom/android/contacts/detail/PhotoSelectionHandler;

    invoke-static {}, Lcom/android/contacts/util/ContactPhotoUtils;->generateTempPhotoFileName()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/contacts/detail/PhotoSelectionHandler;->startTakePhotoActivity(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/contacts/detail/PhotoSelectionHandler;->access$000(Lcom/android/contacts/detail/PhotoSelectionHandler;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 420
    :goto_0
    return-void

    .line 416
    :catch_0
    move-exception v0

    .line 417
    .local v0, e:Landroid/content/ActivityNotFoundException;
    iget-object v1, p0, Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;->this$0:Lcom/android/contacts/detail/PhotoSelectionHandler;

    iget-object v1, v1, Lcom/android/contacts/detail/PhotoSelectionHandler;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0064

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onUseAsPrimaryChosen()V
    .locals 0

    .prologue
    .line 404
    return-void
.end method
