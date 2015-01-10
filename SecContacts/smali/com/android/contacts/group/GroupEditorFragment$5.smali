.class Lcom/android/contacts/group/GroupEditorFragment$5;
.super Ljava/lang/Object;
.source "GroupEditorFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/group/GroupEditorFragment;->setupEditorForAccount(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/group/GroupEditorFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/group/GroupEditorFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 592
    iput-object p1, p0, Lcom/android/contacts/group/GroupEditorFragment$5;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "arg0"

    .prologue
    const/4 v5, 0x1

    .line 595
    iget-object v3, p0, Lcom/android/contacts/group/GroupEditorFragment$5;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    #getter for: Lcom/android/contacts/group/GroupEditorFragment;->mCustomVibration:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/contacts/group/GroupEditorFragment;->access$400(Lcom/android/contacts/group/GroupEditorFragment;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 596
    iget-object v3, p0, Lcom/android/contacts/group/GroupEditorFragment$5;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    #getter for: Lcom/android/contacts/group/GroupEditorFragment;->mCustomVibration:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/contacts/group/GroupEditorFragment;->access$400(Lcom/android/contacts/group/GroupEditorFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 597
    .local v2, vibrationUri:Landroid/net/Uri;
    iget-object v3, p0, Lcom/android/contacts/group/GroupEditorFragment$5;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    #getter for: Lcom/android/contacts/group/GroupEditorFragment;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/contacts/group/GroupEditorFragment;->access$500(Lcom/android/contacts/group/GroupEditorFragment;)Landroid/content/Context;

    move-result-object v3

    #calls: Lcom/android/contacts/group/GroupEditorFragment;->getVibrationTitle(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    invoke-static {v3, v2}, Lcom/android/contacts/group/GroupEditorFragment;->access$600(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 598
    .local v1, vibrationTitle:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 599
    iget-object v3, p0, Lcom/android/contacts/group/GroupEditorFragment$5;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    const/4 v4, 0x0

    #setter for: Lcom/android/contacts/group/GroupEditorFragment;->mCustomVibration:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/contacts/group/GroupEditorFragment;->access$402(Lcom/android/contacts/group/GroupEditorFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 603
    .end local v1           #vibrationTitle:Ljava/lang/String;
    .end local v2           #vibrationUri:Landroid/net/Uri;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 604
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.personalvibration.SelectPatternDialog"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 606
    const-string v3, "show_default"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 607
    const-string v3, "android.intent.extra.pattern.FROM_CONTACT"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 608
    const-string v3, "android.intent.extra.pattern.EXISTING_URI"

    iget-object v4, p0, Lcom/android/contacts/group/GroupEditorFragment$5;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    #getter for: Lcom/android/contacts/group/GroupEditorFragment;->mCustomVibration:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/contacts/group/GroupEditorFragment;->access$400(Lcom/android/contacts/group/GroupEditorFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 609
    iget-object v3, p0, Lcom/android/contacts/group/GroupEditorFragment$5;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    const/4 v4, 0x4

    invoke-virtual {v3, v0, v4}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 610
    return-void
.end method
