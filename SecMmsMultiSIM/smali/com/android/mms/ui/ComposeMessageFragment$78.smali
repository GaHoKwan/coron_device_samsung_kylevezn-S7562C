.class Lcom/android/mms/ui/ComposeMessageFragment$78;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;

.field final synthetic val$dialog:Landroid/app/ProgressDialog;

.field final synthetic val$extrastring:Ljava/lang/String;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/lang/String;Landroid/net/Uri;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 7818
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$78;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageFragment$78;->val$extrastring:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/mms/ui/ComposeMessageFragment$78;->val$uri:Landroid/net/Uri;

    iput-object p4, p0, Lcom/android/mms/ui/ComposeMessageFragment$78;->val$dialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 7820
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$78;->val$extrastring:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$78;->val$extrastring:Ljava/lang/String;

    const-string v3, "vcard"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7821
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$78;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v3, 0x1

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->getImportMediaCount(I)I
    invoke-static {v0, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->access$6700(Lcom/android/mms/ui/ComposeMessageFragment;I)I

    move-result v0

    if-lez v0, :cond_0

    .line 7822
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$78;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$78;->val$uri:Landroid/net/Uri;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->getAddContactUri(Landroid/net/Uri;)Landroid/net/Uri;
    invoke-static {v0, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->access$6800(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 7823
    .local v1, contactUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$78;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/16 v5, 0x14

    move v3, v2

    move v4, v2

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->addRawMedia(Landroid/net/Uri;ZZZI)V
    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessageFragment;->access$6900(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/net/Uri;ZZZI)V

    .line 7827
    .end local v1           #contactUri:Landroid/net/Uri;
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$78;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$78;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7828
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$78;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v2}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    .line 7829
    sget-boolean v0, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v0, :cond_1

    .line 7830
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$78;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v2}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    .line 7833
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$78;->val$dialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    .line 7834
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$78;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 7835
    :cond_2
    return-void
.end method
