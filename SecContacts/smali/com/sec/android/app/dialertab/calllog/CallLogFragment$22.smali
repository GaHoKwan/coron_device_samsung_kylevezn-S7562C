.class Lcom/sec/android/app/dialertab/calllog/CallLogFragment$22;
.super Ljava/lang/Object;
.source "CallLogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->openViewByDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

.field final synthetic val$simcardId:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2081
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$22;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    iput p2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$22;->val$simcardId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 2083
    const-string v0, "CallLogFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2084
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$22;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    iput p2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    .line 2085
    const-string v0, "permanent_save_view_by_setting"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2086
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$22;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$22;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    iget v1, v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichSelectSimId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->saveViewBySIMidPreference(I)V

    .line 2087
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$22;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->saveViewByPreference(I)V

    .line 2090
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$22;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$22;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    iget v1, v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichSelectSimId:I

    iput v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichSimIdButton:I

    .line 2092
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$22;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$200(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2093
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$22;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->clearDetail()V

    .line 2094
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$22;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    const/16 v1, 0x63

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->setCallLogAdapter(I)V

    .line 2095
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$22;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$100(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->resetSelectedPos()V

    .line 2096
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$22;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$100(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->resetDetailUpdate()V

    .line 2097
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$22;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$22;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    iget v1, v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    iget v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$22;->val$simcardId:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->setCallLogAdapter(II)V

    .line 2101
    :goto_0
    return-void

    .line 2099
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$22;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$22;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    iget v1, v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    iget v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$22;->val$simcardId:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->setCallLogAdapter(II)V

    goto :goto_0
.end method
