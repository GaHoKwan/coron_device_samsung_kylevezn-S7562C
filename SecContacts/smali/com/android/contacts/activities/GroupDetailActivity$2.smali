.class Lcom/android/contacts/activities/GroupDetailActivity$2;
.super Ljava/lang/Object;
.source "GroupDetailActivity.java"

# interfaces
.implements Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/GroupDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/GroupDetailActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/GroupDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 242
    iput-object p1, p0, Lcom/android/contacts/activities/GroupDetailActivity$2;->this$0:Lcom/android/contacts/activities/GroupDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddMemberRequested()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 275
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/contacts/activities/GroupDetailActivity$2;->this$0:Lcom/android/contacts/activities/GroupDetailActivity;

    const-class v2, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 277
    const-string v1, "com.sec.android.app.contacts.action.GROUP_EDIT_MEMBER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    const-string v1, "GroupInfo"

    iget-object v2, p0, Lcom/android/contacts/activities/GroupDetailActivity$2;->this$0:Lcom/android/contacts/activities/GroupDetailActivity;

    #getter for: Lcom/android/contacts/activities/GroupDetailActivity;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;
    invoke-static {v2}, Lcom/android/contacts/activities/GroupDetailActivity;->access$100(Lcom/android/contacts/activities/GroupDetailActivity;)Lcom/sec/android/app/contacts/group/GroupInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 280
    const-string v1, "AutoAdd"

    iget-object v2, p0, Lcom/android/contacts/activities/GroupDetailActivity$2;->this$0:Lcom/android/contacts/activities/GroupDetailActivity;

    #getter for: Lcom/android/contacts/activities/GroupDetailActivity;->mIsAutoAdd:Z
    invoke-static {v2}, Lcom/android/contacts/activities/GroupDetailActivity;->access$200(Lcom/android/contacts/activities/GroupDetailActivity;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 282
    iget-object v1, p0, Lcom/android/contacts/activities/GroupDetailActivity$2;->this$0:Lcom/android/contacts/activities/GroupDetailActivity;

    #getter for: Lcom/android/contacts/activities/GroupDetailActivity;->mGroupType:I
    invoke-static {v1}, Lcom/android/contacts/activities/GroupDetailActivity;->access$300(Lcom/android/contacts/activities/GroupDetailActivity;)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 283
    const-string v1, "EditMode"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 290
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/activities/GroupDetailActivity$2;->this$0:Lcom/android/contacts/activities/GroupDetailActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 291
    return-void

    .line 284
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/activities/GroupDetailActivity$2;->this$0:Lcom/android/contacts/activities/GroupDetailActivity;

    #getter for: Lcom/android/contacts/activities/GroupDetailActivity;->mGroupType:I
    invoke-static {v1}, Lcom/android/contacts/activities/GroupDetailActivity;->access$300(Lcom/android/contacts/activities/GroupDetailActivity;)I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 285
    const-string v1, "GroupDetailActivity"

    const-string v2, "AddMember : MODE_GROUP_MEMBER_ICE_ADD"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    const-string v1, "EditMode"

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 288
    :cond_1
    const-string v1, "EditMode"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public onContactSelected(Landroid/net/Uri;)V
    .locals 3
    .parameter "contactUri"

    .prologue
    .line 264
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 266
    .local v0, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_ReplacePackageAs"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.jcontacts"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 267
    const-string v1, "com.android.jcontacts"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 269
    :cond_0
    const-string v1, "finishActivityOnUpSelected"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 270
    iget-object v1, p0, Lcom/android/contacts/activities/GroupDetailActivity$2;->this$0:Lcom/android/contacts/activities/GroupDetailActivity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 271
    return-void
.end method

.method public onGroupSizeUpdated(Ljava/lang/String;)V
    .locals 3
    .parameter "size"

    .prologue
    .line 247
    iget-object v1, p0, Lcom/android/contacts/activities/GroupDetailActivity$2;->this$0:Lcom/android/contacts/activities/GroupDetailActivity;

    #getter for: Lcom/android/contacts/activities/GroupDetailActivity;->mCustomActionBarView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/contacts/activities/GroupDetailActivity;->access$000(Lcom/android/contacts/activities/GroupDetailActivity;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090247

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 248
    .local v0, countView:Landroid/widget/TextView;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    iget-object v1, p0, Lcom/android/contacts/activities/GroupDetailActivity$2;->this$0:Lcom/android/contacts/activities/GroupDetailActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 250
    return-void
.end method
