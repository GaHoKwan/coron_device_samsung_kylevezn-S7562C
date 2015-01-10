.class final Lcom/android/mms/ui/SmsViewFrame$BackgroundQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "SmsViewFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SmsViewFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BackgroundQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SmsViewFrame;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/SmsViewFrame;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "contentResolver"

    .prologue
    .line 1636
    iput-object p1, p0, Lcom/android/mms/ui/SmsViewFrame$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/SmsViewFrame;

    .line 1637
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 1638
    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 4
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 1641
    packed-switch p1, :pswitch_data_0

    .line 1656
    :goto_0
    return-void

    .line 1643
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewFrame$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/SmsViewFrame;

    #getter for: Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/ui/SmsViewFrame;->access$200(Lcom/android/mms/ui/SmsViewFrame;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/BoxListViewActivity;->getSplitMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1644
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewFrame$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/SmsViewFrame;

    #getter for: Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/ui/SmsViewFrame;->access$200(Lcom/android/mms/ui/SmsViewFrame;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/BoxListViewActivity;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/BoxListViewActivity;->removeViewer(I)V

    .line 1648
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewFrame$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/SmsViewFrame;

    #getter for: Lcom/android/mms/ui/SmsViewFrame;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mms/ui/SmsViewFrame;->access$300(Lcom/android/mms/ui/SmsViewFrame;)Landroid/content/Context;

    move-result-object v0

    const-wide/16 v1, -0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    goto :goto_0

    .line 1646
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewFrame$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/SmsViewFrame;

    invoke-virtual {v0}, Lcom/android/mms/ui/SmsViewFrame;->close()V

    goto :goto_1

    .line 1641
    nop

    :pswitch_data_0
    .packed-switch 0x25e4
        :pswitch_0
    .end packed-switch
.end method
