.class final Lcom/android/mms/ui/MessageOptions$BackgroundQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "MessageOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BackgroundQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageOptions;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/MessageOptions;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "contentResolver"

    .prologue
    .line 2160
    iput-object p1, p0, Lcom/android/mms/ui/MessageOptions$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/MessageOptions;

    .line 2161
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 2162
    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 4
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 2166
    packed-switch p1, :pswitch_data_0

    .line 2183
    :goto_0
    return-void

    .line 2169
    :pswitch_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSinglePageSlideView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2170
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/MessageOptions;

    #calls: Lcom/android/mms/ui/MessageOptions;->finishViewerCheckFolderViewMode()V
    invoke-static {v0}, Lcom/android/mms/ui/MessageOptions;->access$300(Lcom/android/mms/ui/MessageOptions;)V

    .line 2175
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/MessageOptions;

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    const-wide/16 v1, -0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    goto :goto_0

    .line 2173
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/MessageOptions;

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 2166
    :pswitch_data_0
    .packed-switch 0x25e4
        :pswitch_0
    .end packed-switch
.end method
