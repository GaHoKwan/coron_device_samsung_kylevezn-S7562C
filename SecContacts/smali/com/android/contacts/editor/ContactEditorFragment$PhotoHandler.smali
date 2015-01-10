.class final Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;
.super Lcom/android/contacts/detail/PhotoSelectionHandler;
.source "ContactEditorFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/editor/ContactEditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PhotoHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;
    }
.end annotation


# instance fields
.field private final mEditor:Lcom/android/contacts/editor/BaseRawContactEditorView;

.field private final mPhotoEditorListener:Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;

.field final mRawContactId:J

.field final synthetic this$0:Lcom/android/contacts/editor/ContactEditorFragment;


# direct methods
.method public constructor <init>(Lcom/android/contacts/editor/ContactEditorFragment;Landroid/content/Context;Lcom/android/contacts/editor/BaseRawContactEditorView;ILcom/android/contacts/model/EntityDeltaList;)V
    .locals 6
    .parameter
    .parameter "context"
    .parameter "editor"
    .parameter "photoMode"
    .parameter "state"

    .prologue
    .line 3508
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    .line 3509
    invoke-virtual {p3}, Lcom/android/contacts/editor/BaseRawContactEditorView;->getPhotoEditor()Lcom/android/contacts/editor/PhotoEditorView;

    move-result-object v2

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p2

    move v3, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/detail/PhotoSelectionHandler;-><init>(Landroid/content/Context;Landroid/view/View;IZLcom/android/contacts/model/EntityDeltaList;)V

    .line 3510
    iput-object p3, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->mEditor:Lcom/android/contacts/editor/BaseRawContactEditorView;

    .line 3511
    invoke-virtual {p3}, Lcom/android/contacts/editor/BaseRawContactEditorView;->getRawContactId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->mRawContactId:J

    .line 3512
    new-instance v0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;-><init>(Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;Lcom/android/contacts/editor/ContactEditorFragment$1;)V

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->mPhotoEditorListener:Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;

    .line 3513
    return-void
.end method

.method static synthetic access$3500(Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;)Lcom/android/contacts/editor/BaseRawContactEditorView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3500
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->mEditor:Lcom/android/contacts/editor/BaseRawContactEditorView;

    return-object v0
.end method


# virtual methods
.method public getListener()Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;
    .locals 1

    .prologue
    .line 3517
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->mPhotoEditorListener:Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;

    return-object v0
.end method

.method public startPhotoActivity(Landroid/content/Intent;ILjava/lang/String;)V
    .locals 4
    .parameter "intent"
    .parameter "requestCode"
    .parameter "photoFile"

    .prologue
    .line 3522
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->mEditor:Lcom/android/contacts/editor/BaseRawContactEditorView;

    invoke-virtual {v2}, Lcom/android/contacts/editor/BaseRawContactEditorView;->getRawContactId()J

    move-result-wide v2

    #setter for: Lcom/android/contacts/editor/ContactEditorFragment;->mRawContactIdRequestingPhoto:J
    invoke-static {v1, v2, v3}, Lcom/android/contacts/editor/ContactEditorFragment;->access$3102(Lcom/android/contacts/editor/ContactEditorFragment;J)J

    .line 3523
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    #setter for: Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentPhotoHandler:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;
    invoke-static {v1, p0}, Lcom/android/contacts/editor/ContactEditorFragment;->access$3202(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;)Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    .line 3524
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    const/4 v2, 0x4

    #setter for: Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I
    invoke-static {v1, v2}, Lcom/android/contacts/editor/ContactEditorFragment;->access$2702(Lcom/android/contacts/editor/ContactEditorFragment;I)I

    .line 3525
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    #setter for: Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentPhotoFile:Ljava/lang/String;
    invoke-static {v1, p3}, Lcom/android/contacts/editor/ContactEditorFragment;->access$3302(Lcom/android/contacts/editor/ContactEditorFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 3527
    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {v1, p1, p2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3533
    :goto_0
    return-void

    .line 3528
    :catch_0
    move-exception v0

    .line 3529
    .local v0, e:Landroid/content/ActivityNotFoundException;
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d0125

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 3531
    invoke-static {}, Lcom/android/contacts/editor/ContactEditorFragment;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No activity found for intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected startSNoteActivity(Landroid/content/Intent;I)V
    .locals 3
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 3538
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->mEditor:Lcom/android/contacts/editor/BaseRawContactEditorView;

    invoke-virtual {v1}, Lcom/android/contacts/editor/BaseRawContactEditorView;->getRawContactId()J

    move-result-wide v1

    #setter for: Lcom/android/contacts/editor/ContactEditorFragment;->mRawContactIdRequestingPhoto:J
    invoke-static {v0, v1, v2}, Lcom/android/contacts/editor/ContactEditorFragment;->access$3102(Lcom/android/contacts/editor/ContactEditorFragment;J)J

    .line 3539
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    #setter for: Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentPhotoHandler:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;
    invoke-static {v0, p0}, Lcom/android/contacts/editor/ContactEditorFragment;->access$3202(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;)Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    .line 3540
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    const/4 v1, 0x4

    #setter for: Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I
    invoke-static {v0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->access$2702(Lcom/android/contacts/editor/ContactEditorFragment;I)I

    .line 3541
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {v0, p1, p2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 3542
    return-void
.end method
