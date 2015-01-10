.class Lcom/android/mms/ui/MessageListItem$1;
.super Ljava/lang/Object;
.source "MessageListItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageListItem;->bindNotifInd(Lcom/android/mms/ui/MessageItem;Landroid/content/Context;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageListItem;

.field final synthetic val$msgItem:Lcom/android/mms/ui/MessageItem;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 793
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem$1;->this$0:Lcom/android/mms/ui/MessageListItem;

    iput-object p2, p0, Lcom/android/mms/ui/MessageListItem$1;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 13
    .parameter "v"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 795
    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem$1;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/mms/ui/MessageListItem;->access$000(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/mms/MmsConfig;->isUltimateStandbyModeOn(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 798
    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem$1;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/mms/ui/MessageListItem;->access$100(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;

    move-result-object v6

    check-cast v6, Landroid/app/Activity;

    invoke-direct {v7, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0a023d

    invoke-virtual {v7, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0a0431

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0a011d

    invoke-virtual {v6, v7, v12}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 915
    :cond_0
    :goto_0
    return-void

    .line 806
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v6

    const-string v7, "SKT"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v6

    const-string v7, "KT"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v6

    const-string v7, "LGU+"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 809
    :cond_2
    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem$1;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/mms/ui/MessageListItem;->access$200(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v11}, Lcom/android/mms/ui/MessageUtils;->checkPSAvailability(Landroid/content/Context;Z)Z

    move-result v6

    if-nez v6, :cond_0

    .line 814
    :cond_3
    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem$1;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/mms/ui/MessageListItem;->access$300(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/mms/ui/MessageUtils;->isAllowTextMessaging(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 815
    const-string v6, "Mms/MessageListItem"

    const-string v7, "Discard MMS downaloding by IT Policy"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem$1;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/mms/ui/MessageListItem;->access$400(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0a04b5

    invoke-static {v6, v7, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 820
    :cond_4
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getAvailableStorage()J

    move-result-wide v6

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    move-result v8

    int-to-long v8, v8

    cmp-long v6, v6, v8

    if-gez v6, :cond_5

    .line 821
    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem$1;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/mms/ui/MessageListItem;->access$500(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0a0196

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 823
    .local v5, unableToDownload:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem$1;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/mms/ui/MessageListItem;->access$600(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v5, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 828
    .end local v5           #unableToDownload:Ljava/lang/String;
    :cond_5
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v4

    .line 829
    .local v4, multiSimNum:I
    const-string v6, "persist.sys.dataprefer.simid"

    invoke-static {v6, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 832
    .local v1, mDataSimSlot:I
    const/4 v0, 0x0

    .line 833
    .local v0, bl_DataSwitch:Z
    const/4 v3, 0x0

    .line 835
    .local v3, mSystemImsi:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem$1;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    iget v6, v6, Lcom/android/mms/ui/MessageItem;->mSimSlot:I

    const/4 v7, -0x1

    if-le v6, v7, :cond_6

    .line 836
    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem$1;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    iget v6, v6, Lcom/android/mms/ui/MessageItem;->mSimSlot:I

    invoke-static {v6}, Lcom/android/mms/MmsConfig;->getIMSIbySimSlot(I)Ljava/lang/String;

    move-result-object v3

    .line 838
    :cond_6
    if-le v4, v11, :cond_7

    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem$1;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    iget v6, v6, Lcom/android/mms/ui/MessageItem;->mSimSlot:I

    if-eq v6, v1, :cond_7

    .line 839
    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem$1;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v6, v6, Lcom/android/mms/ui/MessageItem;->mSimImsi:Ljava/lang/String;

    if-eqz v6, :cond_8

    .line 840
    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem$1;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v6, v6, Lcom/android/mms/ui/MessageItem;->mSimImsi:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 841
    const/4 v0, 0x1

    .line 842
    const-string v6, "Mms/MessageListItem"

    const-string v7, "bindNotifInd onClick() : bl_DataSwitch is true"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    :cond_7
    :goto_1
    if-ne v0, v11, :cond_9

    .line 850
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v6

    iput-boolean v10, v6, Lcom/android/mms/MmsApp;->mDataSwitchDialog:Z

    .line 859
    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem$1;->this$0:Lcom/android/mms/ui/MessageListItem;

    iget-object v7, p0, Lcom/android/mms/ui/MessageListItem$1;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    #setter for: Lcom/android/mms/ui/MessageListItem;->mMmsItemForDataSwitching:Lcom/android/mms/ui/MessageItem;
    invoke-static {v6, v7}, Lcom/android/mms/ui/MessageListItem;->access$702(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageItem;)Lcom/android/mms/ui/MessageItem;

    .line 861
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/mms/ui/MessageListItem$1;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/mms/ui/MessageListItem;->access$1300(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x1080027

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0a04bf

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0a04be

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0a006a

    new-instance v8, Lcom/android/mms/ui/MessageListItem$1$1;

    invoke-direct {v8, p0}, Lcom/android/mms/ui/MessageListItem$1$1;-><init>(Lcom/android/mms/ui/MessageListItem$1;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0a006b

    invoke-virtual {v6, v7, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 845
    :cond_8
    const-string v6, "Mms/MessageListItem"

    const-string v7, "bindNotifInd onClick() : msgItem.mSimImsi is null"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 894
    :cond_9
    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem$1;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mDownloadingContainer:Landroid/widget/LinearLayout;
    invoke-static {v6}, Lcom/android/mms/ui/MessageListItem;->access$800(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 895
    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem$1;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;
    invoke-static {v6}, Lcom/android/mms/ui/MessageListItem;->access$900(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/Button;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 898
    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem$1;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;
    invoke-static {v6}, Lcom/android/mms/ui/MessageListItem;->access$900(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/Button;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setLinksClickable(Z)V

    .line 900
    const/4 v2, 0x0

    .line 902
    .local v2, mIntent:Landroid/content/Intent;
    if-le v4, v11, :cond_a

    if-ne v1, v11, :cond_a

    .line 903
    new-instance v2, Landroid/content/Intent;

    .end local v2           #mIntent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem$1;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/mms/ui/MessageListItem;->access$1400(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;

    move-result-object v6

    const-class v7, Lcom/android/mms/transaction/TransactionService2;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 907
    .restart local v2       #mIntent:Landroid/content/Intent;
    :goto_2
    const-string v6, "uri"

    iget-object v7, p0, Lcom/android/mms/ui/MessageListItem$1;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v7, v7, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 909
    const-string v6, "type"

    invoke-virtual {v2, v6, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 911
    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem$1;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/mms/ui/MessageListItem;->access$1600(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 905
    :cond_a
    new-instance v2, Landroid/content/Intent;

    .end local v2           #mIntent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem$1;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/mms/ui/MessageListItem;->access$1500(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;

    move-result-object v6

    const-class v7, Lcom/android/mms/transaction/TransactionService;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v2       #mIntent:Landroid/content/Intent;
    goto :goto_2
.end method
