.class Lcom/android/contacts/activities/GroupEditorActivity$1;
.super Ljava/lang/Object;
.source "GroupEditorActivity.java"

# interfaces
.implements Lcom/android/contacts/group/GroupEditorFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/GroupEditorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/GroupEditorActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/GroupEditorActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 312
    iput-object p1, p0, Lcom/android/contacts/activities/GroupEditorActivity$1;->this$0:Lcom/android/contacts/activities/GroupEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupNotFound()V
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/contacts/activities/GroupEditorActivity$1;->this$0:Lcom/android/contacts/activities/GroupEditorActivity;

    #calls: Lcom/android/contacts/activities/GroupEditorActivity;->finishWithHidingIME()V
    invoke-static {v0}, Lcom/android/contacts/activities/GroupEditorActivity;->access$000(Lcom/android/contacts/activities/GroupEditorActivity;)V

    .line 316
    return-void
.end method

.method public onReverted()V
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/contacts/activities/GroupEditorActivity$1;->this$0:Lcom/android/contacts/activities/GroupEditorActivity;

    #calls: Lcom/android/contacts/activities/GroupEditorActivity;->finishWithHidingIME()V
    invoke-static {v0}, Lcom/android/contacts/activities/GroupEditorActivity;->access$000(Lcom/android/contacts/activities/GroupEditorActivity;)V

    .line 321
    return-void
.end method

.method public onSaveFinished(ILandroid/content/Intent;)V
    .locals 3
    .parameter "resultCode"
    .parameter "resultIntent"

    .prologue
    .line 334
    iget-object v1, p0, Lcom/android/contacts/activities/GroupEditorActivity$1;->this$0:Lcom/android/contacts/activities/GroupEditorActivity;

    invoke-static {v1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 335
    iget-object v1, p0, Lcom/android/contacts/activities/GroupEditorActivity$1;->this$0:Lcom/android/contacts/activities/GroupEditorActivity;

    invoke-virtual {v1, p1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 336
    iget-object v1, p0, Lcom/android/contacts/activities/GroupEditorActivity$1;->this$0:Lcom/android/contacts/activities/GroupEditorActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 347
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/activities/GroupEditorActivity$1;->this$0:Lcom/android/contacts/activities/GroupEditorActivity;

    #calls: Lcom/android/contacts/activities/GroupEditorActivity;->finishWithHidingIME()V
    invoke-static {v1}, Lcom/android/contacts/activities/GroupEditorActivity;->access$000(Lcom/android/contacts/activities/GroupEditorActivity;)V

    .line 348
    return-void

    .line 338
    :cond_1
    if-eqz p2, :cond_0

    .line 342
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 343
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "GroupInfo"

    const-string v2, "GroupInfo"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 345
    iget-object v1, p0, Lcom/android/contacts/activities/GroupEditorActivity$1;->this$0:Lcom/android/contacts/activities/GroupEditorActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onUpdateDoneButton(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 352
    iget-object v0, p0, Lcom/android/contacts/activities/GroupEditorActivity$1;->this$0:Lcom/android/contacts/activities/GroupEditorActivity;

    #setter for: Lcom/android/contacts/activities/GroupEditorActivity;->mIsDoneButtonEnable:Z
    invoke-static {v0, p1}, Lcom/android/contacts/activities/GroupEditorActivity;->access$102(Lcom/android/contacts/activities/GroupEditorActivity;Z)Z

    .line 353
    iget-object v0, p0, Lcom/android/contacts/activities/GroupEditorActivity$1;->this$0:Lcom/android/contacts/activities/GroupEditorActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 354
    return-void
.end method
