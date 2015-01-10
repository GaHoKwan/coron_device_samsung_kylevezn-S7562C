.class Lcom/android/mms/ui/ComposeMessageFragment$77;
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

.field final synthetic val$itemList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/util/ArrayList;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 7752
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$77;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageFragment$77;->val$itemList:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/mms/ui/ComposeMessageFragment$77;->val$dialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 7754
    const/4 v2, 0x0

    .line 7755
    .local v2, fileUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$77;->val$itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/Parcelable;

    .local v12, parcelable:Landroid/os/Parcelable;
    move-object v2, v12

    .line 7756
    check-cast v2, Landroid/net/Uri;

    .line 7757
    if-eqz v2, :cond_0

    .line 7758
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, ".jpg"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7759
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$77;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move v3, v1

    move v5, v1

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->addMedia(ILandroid/net/Uri;ZZZ)V
    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessageFragment;->access$4700(Lcom/android/mms/ui/ComposeMessageFragment;ILandroid/net/Uri;ZZZ)V

    goto :goto_0

    .line 7760
    :cond_1
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, ".amr"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7761
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$77;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v6, 0x3

    move-object v7, v2

    move v8, v1

    move v9, v4

    move v10, v1

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->addMedia(ILandroid/net/Uri;ZZZ)V
    invoke-static/range {v5 .. v10}, Lcom/android/mms/ui/ComposeMessageFragment;->access$4700(Lcom/android/mms/ui/ComposeMessageFragment;ILandroid/net/Uri;ZZZ)V

    goto :goto_0

    .line 7763
    :cond_2
    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "REQUEST_CODE_PICK_SNOTE : MISSING - fileUri.toString() = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7767
    .end local v12           #parcelable:Landroid/os/Parcelable;
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$77;->val$dialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_4

    .line 7768
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$77;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 7769
    :cond_4
    return-void
.end method
