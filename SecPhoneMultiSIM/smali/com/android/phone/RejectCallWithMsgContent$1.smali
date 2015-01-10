.class Lcom/android/phone/RejectCallWithMsgContent$1;
.super Landroid/os/Handler;
.source "RejectCallWithMsgContent.java"


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
    .line 109
    iput-object p1, p0, Lcom/android/phone/RejectCallWithMsgContent$1;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .parameter "msg"

    .prologue
    const/16 v13, 0x8

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 111
    iget v10, p1, Landroid/os/Message;->what:I

    packed-switch v10, :pswitch_data_0

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 113
    :pswitch_0
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 114
    .local v4, index:I
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    .line 116
    .local v8, text:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/phone/RejectCallWithMsgContent$1;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    #getter for: Lcom/android/phone/RejectCallWithMsgContent;->mBtnList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/phone/RejectCallWithMsgContent;->access$000(Lcom/android/phone/RejectCallWithMsgContent;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 117
    .local v5, item:Landroid/widget/LinearLayout;
    const v10, 0x7f09020f

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    move-object v9, v10

    check-cast v9, Landroid/widget/TextView;

    .line 118
    .local v9, textView:Landroid/widget/TextView;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, curLanguage:Ljava/lang/String;
    const-string v10, "ar"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "iw"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "he"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "fa"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "ur"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 121
    :cond_1
    invoke-virtual {v9}, Landroid/view/View;->requestLayout()V

    .line 122
    invoke-virtual {v9}, Landroid/view/View;->invalidate()V

    .line 124
    :cond_2
    if-eqz v9, :cond_3

    .line 125
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    :cond_3
    const v10, 0x7f090210

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    move-object v0, v10

    check-cast v0, Landroid/widget/Button;

    .line 127
    .local v0, btn:Landroid/widget/Button;
    const-string v10, "reject_call_with_message_send_button_enable"

    invoke-static {v10}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 128
    if-eqz v0, :cond_4

    .line 129
    iget-object v10, p0, Lcom/android/phone/RejectCallWithMsgContent$1;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    #getter for: Lcom/android/phone/RejectCallWithMsgContent;->mSendMsgListener:Landroid/view/View$OnClickListener;
    invoke-static {v10}, Lcom/android/phone/RejectCallWithMsgContent;->access$100(Lcom/android/phone/RejectCallWithMsgContent;)Landroid/view/View$OnClickListener;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 140
    :cond_4
    :goto_1
    const-string v10, "feature_remind_me_later_support "

    invoke-static {v10}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 141
    iget v7, p1, Landroid/os/Message;->arg2:I

    .line 142
    .local v7, remindtime:I
    const v10, 0x7f090211

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    move-object v3, v10

    check-cast v3, Landroid/widget/ImageView;

    .line 143
    .local v3, imageView:Landroid/widget/ImageView;
    if-eqz v3, :cond_5

    .line 144
    if-lez v7, :cond_8

    .line 145
    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 150
    .end local v3           #imageView:Landroid/widget/ImageView;
    .end local v7           #remindtime:I
    :cond_5
    :goto_2
    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    .line 157
    :try_start_0
    const-string v10, "phone"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v6

    .line 158
    .local v6, mTelephonyService:Lcom/android/internal/telephony/ITelephony;
    iget-object v10, p0, Lcom/android/phone/RejectCallWithMsgContent$1;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    invoke-interface {v6}, Lcom/android/internal/telephony/ITelephony;->getDefaultSimForVoiceCalls()I

    move-result v11

    #setter for: Lcom/android/phone/RejectCallWithMsgContent;->mSimId:I
    invoke-static {v10, v11}, Lcom/android/phone/RejectCallWithMsgContent;->access$202(Lcom/android/phone/RejectCallWithMsgContent;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    .end local v6           #mTelephonyService:Lcom/android/internal/telephony/ITelephony;
    :goto_3
    const-string v10, "usa_cdma_emergency_concept"

    invoke-static {v10}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    const-string v10, "ril.cdma.inecmmode"

    const-string v11, "false"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "true"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 166
    iget-object v10, p0, Lcom/android/phone/RejectCallWithMsgContent$1;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    invoke-virtual {v10}, Lcom/android/phone/RejectCallWithMsgContent;->disableSendMsgButton()V

    goto/16 :goto_0

    .line 133
    :cond_6
    if-eqz v9, :cond_7

    .line 134
    iget-object v10, p0, Lcom/android/phone/RejectCallWithMsgContent$1;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    #getter for: Lcom/android/phone/RejectCallWithMsgContent;->mSendMsgListener:Landroid/view/View$OnClickListener;
    invoke-static {v10}, Lcom/android/phone/RejectCallWithMsgContent;->access$100(Lcom/android/phone/RejectCallWithMsgContent;)Landroid/view/View$OnClickListener;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 137
    :cond_7
    if-eqz v0, :cond_4

    .line 138
    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 147
    .restart local v3       #imageView:Landroid/widget/ImageView;
    .restart local v7       #remindtime:I
    :cond_8
    invoke-virtual {v3, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 159
    .end local v3           #imageView:Landroid/widget/ImageView;
    .end local v7           #remindtime:I
    :catch_0
    move-exception v2

    .line 160
    .local v2, ex:Landroid/os/RemoteException;
    const-string v10, "RejectCallWithMsgContent"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ITelephony threw RemoteException"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 111
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
