.class Lcom/sec/android/app/contacts/interaction/VerizonBackupAssistantFragment$1;
.super Ljava/lang/Object;
.source "VerizonBackupAssistantFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/interaction/VerizonBackupAssistantFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/interaction/VerizonBackupAssistantFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/interaction/VerizonBackupAssistantFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/VerizonBackupAssistantFragment$1;->this$0:Lcom/sec/android/app/contacts/interaction/VerizonBackupAssistantFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 58
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.vmmhux.ACTION_VMMHUX_SETUPWIZARD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 59
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 60
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/VerizonBackupAssistantFragment$1;->this$0:Lcom/sec/android/app/contacts/interaction/VerizonBackupAssistantFragment;

    invoke-virtual {v1, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/VerizonBackupAssistantFragment$1;->this$0:Lcom/sec/android/app/contacts/interaction/VerizonBackupAssistantFragment;

    #getter for: Lcom/sec/android/app/contacts/interaction/VerizonBackupAssistantFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/sec/android/app/contacts/interaction/VerizonBackupAssistantFragment;->access$000(Lcom/sec/android/app/contacts/interaction/VerizonBackupAssistantFragment;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/contacts/activities/VerizonBackupAssistantActivity;->neverShowVZWBackupAssistantAgain(Landroid/content/Context;)V

    .line 68
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/VerizonBackupAssistantFragment$1;->this$0:Lcom/sec/android/app/contacts/interaction/VerizonBackupAssistantFragment;

    #getter for: Lcom/sec/android/app/contacts/interaction/VerizonBackupAssistantFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/sec/android/app/contacts/interaction/VerizonBackupAssistantFragment;->access$000(Lcom/sec/android/app/contacts/interaction/VerizonBackupAssistantFragment;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 69
    return-void

    .line 61
    :catch_0
    move-exception v1

    goto :goto_0
.end method
