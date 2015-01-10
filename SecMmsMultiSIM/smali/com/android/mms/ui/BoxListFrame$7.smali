.class Lcom/android/mms/ui/BoxListFrame$7;
.super Ljava/lang/Object;
.source "BoxListFrame.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/BoxListFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/BoxListFrame;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/BoxListFrame;)V
    .locals 0
    .parameter

    .prologue
    .line 978
    iput-object p1, p0, Lcom/android/mms/ui/BoxListFrame$7;->this$0:Lcom/android/mms/ui/BoxListFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    .line 982
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$7;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/ui/BoxListFrame;->access$1200(Lcom/android/mms/ui/BoxListFrame;)Landroid/app/Activity;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    .line 983
    .local v0, composeIntent:Landroid/content/Intent;
    const-string v1, "fromFolderView"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 984
    const-string v1, "exit_on_sent"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 986
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$7;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #calls: Lcom/android/mms/ui/BoxListFrame;->startActivity(Landroid/content/Intent;)V
    invoke-static {v1, v0}, Lcom/android/mms/ui/BoxListFrame;->access$1300(Lcom/android/mms/ui/BoxListFrame;Landroid/content/Intent;)V

    .line 987
    return-void
.end method
