.class public Lcom/android/phone/CallForwardAppWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "CallForwardAppWidgetProvider.java"

# interfaces
.implements Lcom/android/phone/CallForwardingListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallForwardAppWidgetProvider$1;,
        Lcom/android/phone/CallForwardAppWidgetProvider$MyHandler;
    }
.end annotation


# static fields
.field static final THIS_APPWIDGET:Landroid/content/ComponentName;

.field static callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

.field static cfListener:Lcom/android/phone/CallForwardingListener;

.field static mIsReading:Z

.field static mIsVideoOn:Lcom/android/phone/CFStatus;

.field static mIsVoiceOn:Lcom/android/phone/CFStatus;

.field static mLastRequestType:Lcom/android/phone/CFType;

.field static mScreenMode:I

.field static mVideoNumber:Ljava/lang/String;

.field static mVoiceNumber:Ljava/lang/String;

.field static phone:Lcom/android/internal/telephony/Phone;


# instance fields
.field context:Landroid/content/Context;

.field private mHandler:Lcom/android/phone/CallForwardAppWidgetProvider$MyHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 88
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.CallForwardAppWidgetProvider"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    .line 107
    sget-object v0, Lcom/android/phone/CFStatus;->OFF:Lcom/android/phone/CFStatus;

    sput-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsVoiceOn:Lcom/android/phone/CFStatus;

    .line 108
    sget-object v0, Lcom/android/phone/CFStatus;->OFF:Lcom/android/phone/CFStatus;

    sput-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsVideoOn:Lcom/android/phone/CFStatus;

    .line 111
    sput-boolean v3, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsReading:Z

    .line 114
    sput v3, Lcom/android/phone/CallForwardAppWidgetProvider;->mScreenMode:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 98
    new-instance v0, Lcom/android/phone/CallForwardAppWidgetProvider$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/CallForwardAppWidgetProvider$MyHandler;-><init>(Lcom/android/phone/CallForwardAppWidgetProvider;Lcom/android/phone/CallForwardAppWidgetProvider$1;)V

    iput-object v0, p0, Lcom/android/phone/CallForwardAppWidgetProvider;->mHandler:Lcom/android/phone/CallForwardAppWidgetProvider$MyHandler;

    .line 473
    return-void
.end method


# virtual methods
.method handleCallForwardResult(Lcom/android/phone/CFType;Lcom/android/internal/telephony/CallForwardInfo;)V
    .locals 5
    .parameter "type"
    .parameter "cf"

    .prologue
    const v4, 0x7f0e033e

    const/4 v3, 0x1

    .line 232
    sput-object p2, Lcom/android/phone/CallForwardAppWidgetProvider;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    .line 233
    const-string v0, "CallForwardAppWidgetProvider"

    const-string v1, "handleCallForwardResult done: "

    invoke-static {v0, v1, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 234
    const-string v0, "CallForwardAppWidgetProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callForwardInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/phone/CallForwardAppWidgetProvider;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 236
    sget-object v0, Lcom/android/phone/CFType;->VOICE:Lcom/android/phone/CFType;

    if-ne p1, v0, :cond_4

    .line 237
    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v0, v0, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v0, v0, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 238
    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget v0, v0, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v0, v3, :cond_2

    .line 239
    sget-object v0, Lcom/android/phone/CFStatus;->ON:Lcom/android/phone/CFStatus;

    sput-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsVoiceOn:Lcom/android/phone/CFStatus;

    .line 243
    :goto_0
    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v0, v0, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    sput-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mVoiceNumber:Ljava/lang/String;

    .line 261
    :cond_0
    :goto_1
    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mVoiceNumber:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 262
    sget-object v0, Lcom/android/phone/CFStatus;->NUM_NOT_SET:Lcom/android/phone/CFStatus;

    sput-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsVoiceOn:Lcom/android/phone/CFStatus;

    .line 263
    iget-object v0, p0, Lcom/android/phone/CallForwardAppWidgetProvider;->context:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mVoiceNumber:Ljava/lang/String;

    .line 268
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/android/phone/CallForwardAppWidgetProvider;->context:Landroid/content/Context;

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/CallForwardAppWidgetProvider;->updateView(Landroid/content/Context;I)V

    .line 269
    return-void

    .line 241
    :cond_2
    sget-object v0, Lcom/android/phone/CFStatus;->OFF:Lcom/android/phone/CFStatus;

    sput-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsVoiceOn:Lcom/android/phone/CFStatus;

    goto :goto_0

    .line 245
    :cond_3
    sget-object v0, Lcom/android/phone/CFStatus;->NUM_NOT_SET:Lcom/android/phone/CFStatus;

    sput-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsVoiceOn:Lcom/android/phone/CFStatus;

    .line 246
    iget-object v0, p0, Lcom/android/phone/CallForwardAppWidgetProvider;->context:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mVoiceNumber:Ljava/lang/String;

    goto :goto_1

    .line 248
    :cond_4
    sget-object v0, Lcom/android/phone/CFType;->VIDEO:Lcom/android/phone/CFType;

    if-ne p1, v0, :cond_0

    .line 249
    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v0, v0, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v0, v0, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    .line 250
    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget v0, v0, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v0, v3, :cond_5

    .line 251
    sget-object v0, Lcom/android/phone/CFStatus;->ON:Lcom/android/phone/CFStatus;

    sput-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsVideoOn:Lcom/android/phone/CFStatus;

    .line 255
    :goto_3
    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v0, v0, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    sput-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mVideoNumber:Ljava/lang/String;

    goto :goto_1

    .line 253
    :cond_5
    sget-object v0, Lcom/android/phone/CFStatus;->OFF:Lcom/android/phone/CFStatus;

    sput-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsVideoOn:Lcom/android/phone/CFStatus;

    goto :goto_3

    .line 257
    :cond_6
    sget-object v0, Lcom/android/phone/CFStatus;->NUM_NOT_SET:Lcom/android/phone/CFStatus;

    sput-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsVideoOn:Lcom/android/phone/CFStatus;

    .line 258
    iget-object v0, p0, Lcom/android/phone/CallForwardAppWidgetProvider;->context:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mVideoNumber:Ljava/lang/String;

    goto :goto_1

    .line 264
    :cond_7
    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mVideoNumber:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 265
    sget-object v0, Lcom/android/phone/CFStatus;->NUM_NOT_SET:Lcom/android/phone/CFStatus;

    sput-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsVideoOn:Lcom/android/phone/CFStatus;

    .line 266
    iget-object v0, p0, Lcom/android/phone/CallForwardAppWidgetProvider;->context:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mVideoNumber:Ljava/lang/String;

    goto :goto_2
.end method

.method public onDeleted(Landroid/content/Context;[I)V
    .locals 2
    .parameter "context"
    .parameter "appWidgetIds"

    .prologue
    .line 128
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onDeleted(Landroid/content/Context;[I)V

    .line 129
    const-string v0, "CallForwardAppWidgetProvider"

    const-string v1, "onDeleted"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    return-void
.end method

.method public onDisabled(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 135
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onDisabled(Landroid/content/Context;)V

    .line 136
    const-string v0, "CallForwardAppWidgetProvider"

    const-string v1, "onDisabled"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->cfListener:Lcom/android/phone/CallForwardingListener;

    .line 138
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 143
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onEnabled(Landroid/content/Context;)V

    .line 144
    const-string v0, "CallForwardAppWidgetProvider"

    const-string v1, "onEnabled"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iput-object p1, p0, Lcom/android/phone/CallForwardAppWidgetProvider;->context:Landroid/content/Context;

    .line 148
    invoke-static {v3}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    sput-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->phone:Lcom/android/internal/telephony/Phone;

    .line 149
    sput-object p0, Lcom/android/phone/CallForwardAppWidgetProvider;->cfListener:Lcom/android/phone/CallForwardingListener;

    .line 152
    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/CallForwardAppWidgetProvider;->mHandler:Lcom/android/phone/CallForwardAppWidgetProvider$MyHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v3, v3, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    .line 157
    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->cfListener:Lcom/android/phone/CallForwardingListener;

    if-eqz v0, :cond_0

    .line 158
    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->cfListener:Lcom/android/phone/CallForwardingListener;

    sget-object v1, Lcom/android/phone/CFType;->VOICE_AND_VIDEO:Lcom/android/phone/CFType;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/phone/CallForwardingListener;->onStarted(Lcom/android/phone/CFType;Z)V

    .line 160
    :cond_0
    return-void
.end method

.method public onError(I)V
    .locals 2
    .parameter "error"

    .prologue
    .line 460
    const/4 v0, 0x2

    sput v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mScreenMode:I

    .line 461
    iget-object v0, p0, Lcom/android/phone/CallForwardAppWidgetProvider;->context:Landroid/content/Context;

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/CallForwardAppWidgetProvider;->updateView(Landroid/content/Context;I)V

    .line 462
    return-void
.end method

.method public onException(Lcom/android/internal/telephony/CommandException;)V
    .locals 2
    .parameter "exception"

    .prologue
    .line 465
    const/4 v0, 0x2

    sput v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mScreenMode:I

    .line 466
    iget-object v0, p0, Lcom/android/phone/CallForwardAppWidgetProvider;->context:Landroid/content/Context;

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/CallForwardAppWidgetProvider;->updateView(Landroid/content/Context;I)V

    .line 467
    return-void
.end method

.method public onFinished(Z)V
    .locals 1
    .parameter "reading"

    .prologue
    .line 453
    sput-boolean p1, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsReading:Z

    .line 454
    const/4 v0, 0x0

    sput v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mScreenMode:I

    .line 457
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, -0x1

    const/4 v1, 0x3

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 166
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 167
    iput-object p1, p0, Lcom/android/phone/CallForwardAppWidgetProvider;->context:Landroid/content/Context;

    .line 169
    invoke-static {v2}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    sput-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->phone:Lcom/android/internal/telephony/Phone;

    .line 171
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 172
    .local v7, intentAction:Ljava/lang/String;
    const-string v0, "CallForwardAppWidgetProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive, intentAction = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 175
    const-string v0, "com.android.phone.cfwidget.widget_voice_cf_onoff_action"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 176
    const-string v0, "CallForwardAppWidgetProvider"

    const-string v3, "onReceive(): WIDGET_VOICE_CF_ONOFF_ACTION"

    invoke-static {v0, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsVoiceOn:Lcom/android/phone/CFStatus;

    sget-object v3, Lcom/android/phone/CFStatus;->ON:Lcom/android/phone/CFStatus;

    if-ne v0, v3, :cond_0

    move v1, v2

    .line 181
    .local v1, action:I
    :cond_0
    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->phone:Lcom/android/internal/telephony/Phone;

    sget-object v3, Lcom/android/phone/CallForwardAppWidgetProvider;->mVoiceNumber:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/phone/CallForwardAppWidgetProvider;->mHandler:Lcom/android/phone/CallForwardAppWidgetProvider$MyHandler;

    invoke-virtual {v4, v6, v1, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    move v4, v2

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 188
    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->cfListener:Lcom/android/phone/CallForwardingListener;

    if-eqz v0, :cond_1

    .line 189
    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->cfListener:Lcom/android/phone/CallForwardingListener;

    sget-object v3, Lcom/android/phone/CFType;->VOICE:Lcom/android/phone/CFType;

    invoke-interface {v0, v3, v2}, Lcom/android/phone/CallForwardingListener;->onStarted(Lcom/android/phone/CFType;Z)V

    .line 229
    .end local v1           #action:I
    :cond_1
    :goto_0
    return-void

    .line 191
    :cond_2
    const-string v0, "com.android.phone.cfwidget.widget_video_cf_onoff_action"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 192
    const-string v0, "CallForwardAppWidgetProvider"

    const-string v3, "onReceive(): WIDGET_VIDEO_CF_ONOFF_ACTION"

    invoke-static {v0, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsVideoOn:Lcom/android/phone/CFStatus;

    sget-object v3, Lcom/android/phone/CFStatus;->ON:Lcom/android/phone/CFStatus;

    if-ne v0, v3, :cond_3

    move v1, v2

    .line 197
    .restart local v1       #action:I
    :cond_3
    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->phone:Lcom/android/internal/telephony/Phone;

    sget-object v3, Lcom/android/phone/CallForwardAppWidgetProvider;->mVideoNumber:Ljava/lang/String;

    const/16 v5, 0x10

    iget-object v4, p0, Lcom/android/phone/CallForwardAppWidgetProvider;->mHandler:Lcom/android/phone/CallForwardAppWidgetProvider$MyHandler;

    invoke-virtual {v4, v6, v1, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    move v4, v2

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;IILandroid/os/Message;)V

    .line 205
    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->cfListener:Lcom/android/phone/CallForwardingListener;

    if-eqz v0, :cond_1

    .line 206
    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->cfListener:Lcom/android/phone/CallForwardingListener;

    sget-object v3, Lcom/android/phone/CFType;->VIDEO:Lcom/android/phone/CFType;

    invoke-interface {v0, v3, v2}, Lcom/android/phone/CallForwardingListener;->onStarted(Lcom/android/phone/CFType;Z)V

    goto :goto_0

    .line 208
    .end local v1           #action:I
    :cond_4
    const-string v0, "com.android.phone.cfwidget.widget_reload_action"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 209
    const-string v0, "CallForwardAppWidgetProvider"

    const-string v3, "onReceive(): WIDGET_RELOAD_ACTION"

    invoke-static {v0, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v3, p0, Lcom/android/phone/CallForwardAppWidgetProvider;->mHandler:Lcom/android/phone/CallForwardAppWidgetProvider$MyHandler;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v2, v2, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    .line 217
    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->cfListener:Lcom/android/phone/CallForwardingListener;

    if-eqz v0, :cond_1

    .line 218
    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->cfListener:Lcom/android/phone/CallForwardingListener;

    sget-object v2, Lcom/android/phone/CFType;->VOICE_AND_VIDEO:Lcom/android/phone/CFType;

    invoke-interface {v0, v2, v6}, Lcom/android/phone/CallForwardingListener;->onStarted(Lcom/android/phone/CFType;Z)V

    goto :goto_0

    .line 220
    :cond_5
    const-string v0, "com.android.phone.cfwidget.widget_back_screen_action"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 221
    const-string v0, "CallForwardAppWidgetProvider"

    const-string v3, "onReceive(): WIDGET_BACK_SCREEN_ACTION"

    invoke-static {v0, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    sput v2, Lcom/android/phone/CallForwardAppWidgetProvider;->mScreenMode:I

    .line 223
    invoke-virtual {p0, p1, v5}, Lcom/android/phone/CallForwardAppWidgetProvider;->updateView(Landroid/content/Context;I)V

    goto :goto_0

    .line 224
    :cond_6
    const-string v0, "com.android.phone.cfwidget.widget_handle_mmi_action"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    const-string v0, "CallForwardAppWidgetProvider"

    const-string v2, "onReceive(): WIDGET_HANDLE_MMI_ACTION"

    invoke-static {v0, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    sput v1, Lcom/android/phone/CallForwardAppWidgetProvider;->mScreenMode:I

    .line 227
    invoke-virtual {p0, p1, v5}, Lcom/android/phone/CallForwardAppWidgetProvider;->updateView(Landroid/content/Context;I)V

    goto/16 :goto_0
.end method

.method public onStarted(Lcom/android/phone/CFType;Z)V
    .locals 2
    .parameter "type"
    .parameter "reading"

    .prologue
    .line 446
    sput-boolean p2, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsReading:Z

    .line 447
    sput-object p1, Lcom/android/phone/CallForwardAppWidgetProvider;->mLastRequestType:Lcom/android/phone/CFType;

    .line 448
    const/4 v0, 0x1

    sput v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mScreenMode:I

    .line 449
    iget-object v0, p0, Lcom/android/phone/CallForwardAppWidgetProvider;->context:Landroid/content/Context;

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/CallForwardAppWidgetProvider;->updateView(Landroid/content/Context;I)V

    .line 450
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 3
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/phone/CallForwardAppWidgetProvider;->context:Landroid/content/Context;

    .line 119
    const-string v1, "CallForwardAppWidgetProvider"

    const-string v2, "onUpdate"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    array-length v0, p3

    .line 122
    .local v0, N:I
    const/4 v1, -0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/phone/CallForwardAppWidgetProvider;->updateView(Landroid/content/Context;I)V

    .line 123
    return-void
.end method

.method updateToggleButton(Landroid/widget/RemoteViews;)V
    .locals 7
    .parameter "views"

    .prologue
    const v6, 0x7f090061

    const v5, 0x7f090060

    const v2, 0x7f09005f

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 412
    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsVoiceOn:Lcom/android/phone/CFStatus;

    sget-object v1, Lcom/android/phone/CFStatus;->ON:Lcom/android/phone/CFStatus;

    if-ne v0, v1, :cond_0

    .line 413
    invoke-virtual {p1, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 414
    invoke-virtual {p1, v5, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 416
    iget-object v0, p0, Lcom/android/phone/CallForwardAppWidgetProvider;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v6, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 417
    const v0, 0x7f090063

    invoke-virtual {p1, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 418
    const v0, 0x7f090064

    invoke-virtual {p1, v0, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 428
    :goto_0
    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsVideoOn:Lcom/android/phone/CFStatus;

    sget-object v1, Lcom/android/phone/CFStatus;->ON:Lcom/android/phone/CFStatus;

    if-ne v0, v1, :cond_1

    .line 429
    const v0, 0x7f090067

    invoke-virtual {p1, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 430
    const v0, 0x7f090068

    invoke-virtual {p1, v0, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 432
    const v0, 0x7f090069

    iget-object v1, p0, Lcom/android/phone/CallForwardAppWidgetProvider;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0028

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 433
    const v0, 0x7f09006b

    invoke-virtual {p1, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 434
    const v0, 0x7f09006c

    invoke-virtual {p1, v0, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 443
    :goto_1
    return-void

    .line 420
    :cond_0
    invoke-virtual {p1, v5, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 421
    invoke-virtual {p1, v2, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 423
    iget-object v0, p0, Lcom/android/phone/CallForwardAppWidgetProvider;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v6, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 424
    const v0, 0x7f090064

    invoke-virtual {p1, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 425
    const v0, 0x7f090063

    invoke-virtual {p1, v0, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0

    .line 436
    :cond_1
    const v0, 0x7f090067

    invoke-virtual {p1, v0, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 437
    const v0, 0x7f090068

    invoke-virtual {p1, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 439
    const v0, 0x7f090069

    iget-object v1, p0, Lcom/android/phone/CallForwardAppWidgetProvider;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0029

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 440
    const v0, 0x7f09006b

    invoke-virtual {p1, v0, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 441
    const v0, 0x7f09006c

    invoke-virtual {p1, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_1
.end method

.method updateView(Landroid/content/Context;I)V
    .locals 23
    .parameter "context"
    .parameter "appWidgetId"

    .prologue
    .line 273
    new-instance v17, Landroid/widget/RemoteViews;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v20

    const v21, 0x7f040015

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 276
    .local v17, views:Landroid/widget/RemoteViews;
    new-instance v13, Landroid/content/Intent;

    const-string v20, "android.intent.action.MAIN"

    move-object/from16 v0, v20

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 277
    .local v13, settingIntent:Landroid/content/Intent;
    const/high16 v20, 0x1000

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 278
    const-string v20, "com.android.phone"

    const-string v21, "com.android.phone.callsettings.CallTypeSelectForForwarding"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 279
    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v13, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 280
    .local v9, pendingSettingIntent:Landroid/app/PendingIntent;
    const v20, 0x7f09005c

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1, v9}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 283
    const/16 v20, 0x0

    new-instance v21, Landroid/content/Intent;

    const-string v22, "com.android.phone.cfwidget.widget_voice_cf_onoff_action"

    invoke-direct/range {v21 .. v22}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v22, 0x800

    move-object/from16 v0, p1

    move/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v18

    .line 286
    .local v18, voiceCfOnOff:Landroid/app/PendingIntent;
    new-instance v12, Landroid/content/Intent;

    const-string v20, "android.intent.action.MAIN"

    move-object/from16 v0, v20

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 287
    .local v12, setVoiceNumberIntent:Landroid/content/Intent;
    const/high16 v20, 0x1000

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 288
    const-string v20, "com.android.phone"

    const-string v21, "com.android.phone.GsmUmtsCallForwardOptionsFromWidget"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 289
    const-string v20, "FROMWIDGET"

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 290
    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v12, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 292
    .local v8, pendingSetVoiceNumberIntent:Landroid/app/PendingIntent;
    sget-object v20, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsVoiceOn:Lcom/android/phone/CFStatus;

    sget-object v21, Lcom/android/phone/CFStatus;->NUM_NOT_SET:Lcom/android/phone/CFStatus;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 293
    const v20, 0x7f09005e

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1, v8}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 299
    :goto_0
    const/16 v20, 0x0

    new-instance v21, Landroid/content/Intent;

    const-string v22, "com.android.phone.cfwidget.widget_video_cf_onoff_action"

    invoke-direct/range {v21 .. v22}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v22, 0x800

    move-object/from16 v0, p1

    move/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v16

    .line 302
    .local v16, videoCfOnOff:Landroid/app/PendingIntent;
    new-instance v11, Landroid/content/Intent;

    const-string v20, "android.intent.action.MAIN"

    move-object/from16 v0, v20

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 303
    .local v11, setVideoNumberIntent:Landroid/content/Intent;
    const/high16 v20, 0x1000

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 304
    const-string v20, "com.android.phone"

    const-string v21, "com.android.phone.GsmUmtsVideoCallForwardOptionsFromWidget"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 305
    const-string v20, "FROMWIDGET"

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 306
    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v11, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 308
    .local v7, pendingSetVideoNumberIntent:Landroid/app/PendingIntent;
    sget-object v20, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsVideoOn:Lcom/android/phone/CFStatus;

    sget-object v21, Lcom/android/phone/CFStatus;->NUM_NOT_SET:Lcom/android/phone/CFStatus;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_1

    .line 309
    const v20, 0x7f090066

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1, v7}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 315
    :goto_1
    sget v20, Lcom/android/phone/CallForwardAppWidgetProvider;->mScreenMode:I

    packed-switch v20, :pswitch_data_0

    .line 406
    :goto_2
    invoke-static/range {p1 .. p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v19

    .line 407
    .local v19, wm:Landroid/appwidget/AppWidgetManager;
    sget-object v20, Lcom/android/phone/CallForwardAppWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 408
    return-void

    .line 295
    .end local v7           #pendingSetVideoNumberIntent:Landroid/app/PendingIntent;
    .end local v11           #setVideoNumberIntent:Landroid/content/Intent;
    .end local v16           #videoCfOnOff:Landroid/app/PendingIntent;
    .end local v19           #wm:Landroid/appwidget/AppWidgetManager;
    :cond_0
    const v20, 0x7f09005e

    move-object/from16 v0, v17

    move/from16 v1, v20

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_0

    .line 311
    .restart local v7       #pendingSetVideoNumberIntent:Landroid/app/PendingIntent;
    .restart local v11       #setVideoNumberIntent:Landroid/content/Intent;
    .restart local v16       #videoCfOnOff:Landroid/app/PendingIntent;
    :cond_1
    const v20, 0x7f090066

    move-object/from16 v0, v17

    move/from16 v1, v20

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_1

    .line 317
    :pswitch_0
    const v20, 0x7f09005d

    const/16 v21, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 318
    const v20, 0x7f09006d

    const/16 v21, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 321
    sget-object v20, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsVoiceOn:Lcom/android/phone/CFStatus;

    sget-object v21, Lcom/android/phone/CFStatus;->NUM_NOT_SET:Lcom/android/phone/CFStatus;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_2

    .line 322
    const v20, 0x7f0e033e

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    sput-object v20, Lcom/android/phone/CallForwardAppWidgetProvider;->mVoiceNumber:Ljava/lang/String;

    .line 325
    :cond_2
    sget-object v20, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsVideoOn:Lcom/android/phone/CFStatus;

    sget-object v21, Lcom/android/phone/CFStatus;->NUM_NOT_SET:Lcom/android/phone/CFStatus;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_3

    .line 326
    const v20, 0x7f0e033e

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    sput-object v20, Lcom/android/phone/CallForwardAppWidgetProvider;->mVideoNumber:Ljava/lang/String;

    .line 329
    :cond_3
    const v20, 0x7f090062

    sget-object v21, Lcom/android/phone/CallForwardAppWidgetProvider;->mVoiceNumber:Ljava/lang/String;

    move-object/from16 v0, v17

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 330
    const v20, 0x7f09006a

    sget-object v21, Lcom/android/phone/CallForwardAppWidgetProvider;->mVideoNumber:Ljava/lang/String;

    move-object/from16 v0, v17

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 332
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/CallForwardAppWidgetProvider;->updateToggleButton(Landroid/widget/RemoteViews;)V

    goto/16 :goto_2

    .line 336
    :pswitch_1
    const v20, 0x7f09005d

    const/16 v21, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 337
    const v20, 0x7f09006d

    const/16 v21, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 338
    const v20, 0x7f09006e

    const/16 v21, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 339
    const v20, 0x7f090071

    const/16 v21, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 340
    const v20, 0x7f090073

    const/16 v21, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 341
    const v20, 0x7f090075

    const/16 v21, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 344
    const v20, 0x7f0e0080

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 345
    .local v5, dialogText:Ljava/lang/String;
    sget-boolean v20, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsReading:Z

    if-nez v20, :cond_4

    .line 346
    sget-object v20, Lcom/android/phone/CallForwardAppWidgetProvider;->mLastRequestType:Lcom/android/phone/CFType;

    sget-object v21, Lcom/android/phone/CFType;->VOICE:Lcom/android/phone/CFType;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_6

    .line 347
    sget-object v20, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsVoiceOn:Lcom/android/phone/CFStatus;

    sget-object v21, Lcom/android/phone/CFStatus;->ON:Lcom/android/phone/CFStatus;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_5

    .line 348
    const v20, 0x7f0e0340

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 360
    :cond_4
    :goto_3
    const v20, 0x7f090070

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 349
    :cond_5
    sget-object v20, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsVoiceOn:Lcom/android/phone/CFStatus;

    sget-object v21, Lcom/android/phone/CFStatus;->OFF:Lcom/android/phone/CFStatus;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 350
    const v20, 0x7f0e033f

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 352
    :cond_6
    sget-object v20, Lcom/android/phone/CallForwardAppWidgetProvider;->mLastRequestType:Lcom/android/phone/CFType;

    sget-object v21, Lcom/android/phone/CFType;->VIDEO:Lcom/android/phone/CFType;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 353
    sget-object v20, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsVideoOn:Lcom/android/phone/CFStatus;

    sget-object v21, Lcom/android/phone/CFStatus;->ON:Lcom/android/phone/CFStatus;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_7

    .line 354
    const v20, 0x7f0e0342

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 355
    :cond_7
    sget-object v20, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsVideoOn:Lcom/android/phone/CFStatus;

    sget-object v21, Lcom/android/phone/CFStatus;->OFF:Lcom/android/phone/CFStatus;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 356
    const v20, 0x7f0e0341

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 364
    .end local v5           #dialogText:Ljava/lang/String;
    :pswitch_2
    const v20, 0x7f09005d

    const/16 v21, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 365
    const v20, 0x7f09006d

    const/16 v21, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 366
    const v20, 0x7f09006e

    const/16 v21, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 367
    const v20, 0x7f090071

    const/16 v21, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 368
    const v20, 0x7f090073

    const/16 v21, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 371
    sget-boolean v20, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsReading:Z

    if-eqz v20, :cond_8

    .line 372
    const v20, 0x7f0e0343

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 373
    .local v14, tryAgain:Ljava/lang/String;
    const v20, 0x7f090075

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1, v14}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 375
    const/16 v20, 0x0

    new-instance v21, Landroid/content/Intent;

    const-string v22, "com.android.phone.cfwidget.widget_reload_action"

    invoke-direct/range {v21 .. v22}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v22, 0x800

    move-object/from16 v0, p1

    move/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 377
    .local v10, reloadCf:Landroid/app/PendingIntent;
    const v20, 0x7f090075

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1, v10}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 386
    .end local v10           #reloadCf:Landroid/app/PendingIntent;
    .end local v14           #tryAgain:Ljava/lang/String;
    :goto_4
    const v20, 0x7f090075

    const/16 v21, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_2

    .line 379
    :cond_8
    const v20, 0x7f0e0087

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 380
    .local v6, ok:Ljava/lang/String;
    const v20, 0x7f090075

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 382
    const/16 v20, 0x0

    new-instance v21, Landroid/content/Intent;

    const-string v22, "com.android.phone.cfwidget.widget_back_screen_action"

    invoke-direct/range {v21 .. v22}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v22, 0x800

    move-object/from16 v0, p1

    move/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 384
    .local v4, backScreen:Landroid/app/PendingIntent;
    const v20, 0x7f090075

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_4

    .line 390
    .end local v4           #backScreen:Landroid/app/PendingIntent;
    .end local v6           #ok:Ljava/lang/String;
    :pswitch_3
    const v20, 0x7f09005d

    const/16 v21, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 391
    const v20, 0x7f09006d

    const/16 v21, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 392
    const v20, 0x7f09006e

    const/16 v21, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 393
    const v20, 0x7f090071

    const/16 v21, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 394
    const v20, 0x7f090073

    const/16 v21, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 396
    const v20, 0x7f0e0345

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 397
    .local v15, update:Ljava/lang/String;
    const v20, 0x7f090075

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1, v15}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 399
    const/16 v20, 0x0

    new-instance v21, Landroid/content/Intent;

    const-string v22, "com.android.phone.cfwidget.widget_reload_action"

    invoke-direct/range {v21 .. v22}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v22, 0x800

    move-object/from16 v0, p1

    move/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 401
    .restart local v10       #reloadCf:Landroid/app/PendingIntent;
    const v20, 0x7f090075

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1, v10}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 402
    const v20, 0x7f090075

    const/16 v21, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_2

    .line 315
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
