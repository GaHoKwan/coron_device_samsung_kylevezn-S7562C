.class Lcom/sec/android/app/contacts/interaction/VerizonBackupAssistantFragment$2;
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
    .line 75
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/VerizonBackupAssistantFragment$2;->this$0:Lcom/sec/android/app/contacts/interaction/VerizonBackupAssistantFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/VerizonBackupAssistantFragment$2;->this$0:Lcom/sec/android/app/contacts/interaction/VerizonBackupAssistantFragment;

    #getter for: Lcom/sec/android/app/contacts/interaction/VerizonBackupAssistantFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/VerizonBackupAssistantFragment;->access$000(Lcom/sec/android/app/contacts/interaction/VerizonBackupAssistantFragment;)Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/sec/android/app/contacts/activities/VerizonBackupAssistantActivity;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/VerizonBackupAssistantFragment$2;->this$0:Lcom/sec/android/app/contacts/interaction/VerizonBackupAssistantFragment;

    #getter for: Lcom/sec/android/app/contacts/interaction/VerizonBackupAssistantFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/VerizonBackupAssistantFragment;->access$000(Lcom/sec/android/app/contacts/interaction/VerizonBackupAssistantFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/VerizonBackupAssistantActivity;->neverShowVZWBackupAssistantAgain(Landroid/content/Context;)V

    .line 81
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/VerizonBackupAssistantFragment$2;->this$0:Lcom/sec/android/app/contacts/interaction/VerizonBackupAssistantFragment;

    #getter for: Lcom/sec/android/app/contacts/interaction/VerizonBackupAssistantFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/VerizonBackupAssistantFragment;->access$000(Lcom/sec/android/app/contacts/interaction/VerizonBackupAssistantFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 83
    :cond_0
    return-void
.end method
