.class Lcom/android/phone/RejectCallWithMsgContent$2;
.super Ljava/lang/Object;
.source "RejectCallWithMsgContent.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/RejectCallWithMsgContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/RejectCallWithMsgContent;


# direct methods
.method constructor <init>(Lcom/android/phone/RejectCallWithMsgContent;)V
    .locals 0
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/phone/RejectCallWithMsgContent$2;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12
    .parameter "v"

    .prologue
    .line 177
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v7

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 178
    .local v0, call:Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_1

    .line 179
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 180
    .local v1, conn:Lcom/android/internal/telephony/Connection;
    if-eqz v1, :cond_0

    .line 181
    iget-object v7, p0, Lcom/android/phone/RejectCallWithMsgContent$2;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v8

    #setter for: Lcom/android/phone/RejectCallWithMsgContent;->mPhoneNumber:Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/android/phone/RejectCallWithMsgContent;->access$302(Lcom/android/phone/RejectCallWithMsgContent;Ljava/lang/String;)Ljava/lang/String;

    .line 183
    :cond_0
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    .line 185
    .end local v1           #conn:Lcom/android/internal/telephony/Connection;
    :cond_1
    const-string v7, "roaming_auto_dial"

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 186
    iget-object v7, p0, Lcom/android/phone/RejectCallWithMsgContent$2;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    iget-object v8, p0, Lcom/android/phone/RejectCallWithMsgContent$2;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    #getter for: Lcom/android/phone/RejectCallWithMsgContent;->mPhoneNumber:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/phone/RejectCallWithMsgContent;->access$300(Lcom/android/phone/RejectCallWithMsgContent;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/phone/RejectCallWithMsgContent;->setRejectCallNumber(Ljava/lang/String;)V

    .line 188
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 189
    .local v3, parentView:Landroid/widget/LinearLayout;
    const v7, 0x7f09020f

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 190
    .local v5, textView:Landroid/widget/TextView;
    const/4 v4, 0x0

    .line 191
    .local v4, remind_time:I
    const-string v7, "feature_remind_me_later_support "

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 192
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v7, p0, Lcom/android/phone/RejectCallWithMsgContent$2;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    iget-object v7, v7, Lcom/android/phone/RejectCallWithMsgContent;->strList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_4

    .line 193
    iget-object v7, p0, Lcom/android/phone/RejectCallWithMsgContent$2;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    iget-object v7, v7, Lcom/android/phone/RejectCallWithMsgContent;->strList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 194
    iget-object v7, p0, Lcom/android/phone/RejectCallWithMsgContent$2;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    iget-object v7, v7, Lcom/android/phone/RejectCallWithMsgContent;->remindtimeList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 192
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 197
    :cond_4
    const-string v7, "RejectCallWithMsgContent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "send msg!! remind_time : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 198
    if-eqz v4, :cond_5

    .line 199
    sput v4, Lcom/android/phone/PhoneApp;->remindCallTime:I

    .line 200
    iget-object v7, p0, Lcom/android/phone/RejectCallWithMsgContent$2;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    #getter for: Lcom/android/phone/RejectCallWithMsgContent;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/phone/RejectCallWithMsgContent;->access$400(Lcom/android/phone/RejectCallWithMsgContent;)Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/RejectCallWithMsgContent$2;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    #getter for: Lcom/android/phone/RejectCallWithMsgContent;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/phone/RejectCallWithMsgContent;->access$400(Lcom/android/phone/RejectCallWithMsgContent;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v4}, Lcom/android/phone/RejectCallWithMsgContent;->constructReminderLabel(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    .line 201
    .local v6, toast:Landroid/widget/Toast;
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 204
    .end local v2           #i:I
    .end local v6           #toast:Landroid/widget/Toast;
    :cond_5
    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    new-instance v9, Lcom/android/phone/RejectCallWithMsgContent$SendMsgRunnable;

    iget-object v10, p0, Lcom/android/phone/RejectCallWithMsgContent$2;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v9, v10, v7}, Lcom/android/phone/RejectCallWithMsgContent$SendMsgRunnable;-><init>(Lcom/android/phone/RejectCallWithMsgContent;Ljava/lang/String;)V

    const-wide/16 v10, 0x3e8

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 205
    return-void
.end method
