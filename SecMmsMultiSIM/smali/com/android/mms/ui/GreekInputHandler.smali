.class public Lcom/android/mms/ui/GreekInputHandler;
.super Landroid/content/BroadcastReceiver;
.source "GreekInputHandler.java"


# static fields
.field private static final ACTION_RESPONSE_SKPD:Ljava/lang/String; = "inputLanguageAction"

.field private static final ACTION_RESPONSE_SWYPE:Ljava/lang/String; = "com.swype.android.broadcast"

.field private static final KEY_CAPS_STATUS:Ljava/lang/String; = "caps_status"

.field private static final KEY_SKPD_INPUT_LANGUAGE:Ljava/lang/String; = "AxT9IME.inputLanguage"

.field private static final KEY_SWYPE_INPUT_LANGUAGE:Ljava/lang/String; = "swype.inputLanguage"

.field private static final LANGUAGE_ACTION:Ljava/lang/String; = "com.android.mms.LANGUAGE_ACTION"

.field private static final LANGUAGE_GREEK:Ljava/lang/String; = "el"

.field private static SIPLanguage:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "Mms/GreekInputHandler"

.field private static isUiVisible:Z


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

.field private mIntentFilter:Landroid/content/IntentFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-string v0, ""

    sput-object v0, Lcom/android/mms/ui/GreekInputHandler;->SIPLanguage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0
    .parameter "activity"
    .parameter "composer"

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/android/mms/ui/GreekInputHandler;->mActivity:Landroid/app/Activity;

    .line 67
    iput-object p2, p0, Lcom/android/mms/ui/GreekInputHandler;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    .line 68
    return-void
.end method

.method public static EncodeGreekCharater(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "msgText"

    .prologue
    .line 170
    const-string v6, "Mms/GreekInputHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "msgText.length() "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    move-object v0, p0

    .line 173
    .local v0, Tempbuff:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    .local v3, stringBuilder:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 179
    .local v5, v:C
    invoke-static {v5}, Lcom/android/mms/ui/GreekInputHandler;->convertGreekCharacter(C)C

    move-result v4

    .line 180
    .local v4, temp:C
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 181
    .local v2, s:Ljava/lang/StringBuffer;
    const-string v6, "Mms/GreekInputHandler"

    const-string v7, "char temp"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 176
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 186
    .end local v2           #s:Ljava/lang/StringBuffer;
    .end local v4           #temp:C
    .end local v5           #v:C
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 189
    return-object p0
.end method

.method public static MappingGreekCharater(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "msg"

    .prologue
    .line 224
    move-object v0, p0

    .line 225
    .local v0, Tempbuff:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 227
    .local v2, stringBuilder:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 229
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 231
    .local v3, temp:C
    sparse-switch v3, :sswitch_data_0

    .line 249
    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 227
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 232
    :sswitch_0
    const/16 v3, 0x41

    goto :goto_1

    .line 233
    :sswitch_1
    const/16 v3, 0x45

    goto :goto_1

    .line 234
    :sswitch_2
    const/16 v3, 0x48

    goto :goto_1

    .line 235
    :sswitch_3
    const/16 v3, 0x49

    goto :goto_1

    .line 236
    :sswitch_4
    const/16 v3, 0x4f

    goto :goto_1

    .line 237
    :sswitch_5
    const/16 v3, 0x59

    goto :goto_1

    .line 238
    :sswitch_6
    const/16 v3, 0x3a9

    goto :goto_1

    .line 239
    :sswitch_7
    const/16 v3, 0x3a3

    goto :goto_1

    .line 240
    :sswitch_8
    const/16 v3, 0x49

    goto :goto_1

    .line 241
    :sswitch_9
    const/16 v3, 0x59

    goto :goto_1

    .line 242
    :sswitch_a
    const/16 v3, 0x59

    goto :goto_1

    .line 243
    :sswitch_b
    const/16 v3, 0x49

    goto :goto_1

    .line 252
    .end local v3           #temp:C
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 253
    return-object p0

    .line 231
    nop

    :sswitch_data_0
    .sparse-switch
        0x386 -> :sswitch_0
        0x388 -> :sswitch_1
        0x389 -> :sswitch_2
        0x38a -> :sswitch_3
        0x38c -> :sswitch_4
        0x38e -> :sswitch_5
        0x38f -> :sswitch_6
        0x399 -> :sswitch_b
        0x3a5 -> :sswitch_9
        0x3aa -> :sswitch_8
        0x3ab -> :sswitch_a
        0x3c2 -> :sswitch_7
    .end sparse-switch
.end method

.method private static convertGreekCharacter(C)C
    .locals 1
    .parameter "c"

    .prologue
    .line 194
    move v0, p0

    .line 195
    .local v0, temp:C
    packed-switch v0, :pswitch_data_0

    .line 219
    :goto_0
    :pswitch_0
    return v0

    .line 197
    :pswitch_1
    const/16 v0, 0x45

    goto :goto_0

    .line 198
    :pswitch_2
    const/16 v0, 0x50

    goto :goto_0

    .line 199
    :pswitch_3
    const/16 v0, 0x54

    goto :goto_0

    .line 200
    :pswitch_4
    const/16 v0, 0x59

    goto :goto_0

    .line 201
    :pswitch_5
    const/16 v0, 0x49

    goto :goto_0

    .line 202
    :pswitch_6
    const/16 v0, 0x4f

    goto :goto_0

    .line 203
    :pswitch_7
    const/16 v0, 0x41

    goto :goto_0

    .line 204
    :pswitch_8
    const/16 v0, 0x48

    goto :goto_0

    .line 205
    :pswitch_9
    const/16 v0, 0x4b

    goto :goto_0

    .line 206
    :pswitch_a
    const/16 v0, 0x5a

    goto :goto_0

    .line 207
    :pswitch_b
    const/16 v0, 0x58

    goto :goto_0

    .line 208
    :pswitch_c
    const/16 v0, 0x42

    goto :goto_0

    .line 209
    :pswitch_d
    const/16 v0, 0x4e

    goto :goto_0

    .line 210
    :pswitch_e
    const/16 v0, 0x4d

    goto :goto_0

    .line 211
    :pswitch_f
    const/16 v0, 0x49

    goto :goto_0

    .line 212
    :pswitch_10
    const/16 v0, 0x49

    goto :goto_0

    .line 213
    :pswitch_11
    const/16 v0, 0x59

    goto :goto_0

    .line 214
    :pswitch_12
    const/16 v0, 0x59

    goto :goto_0

    .line 195
    nop

    :pswitch_data_0
    .packed-switch 0x38a
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_a
        :pswitch_8
        :pswitch_0
        :pswitch_5
        :pswitch_9
        :pswitch_0
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_10
        :pswitch_12
    .end packed-switch
.end method

.method public static convertGreekSmallLetterToCapital(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "inputText"

    .prologue
    .line 258
    move-object v3, p0

    .line 259
    .local v3, tempBuf:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 261
    .local v1, resultString:Ljava/lang/StringBuilder;
    if-nez v3, :cond_0

    .line 278
    .end local p0
    :goto_0
    return-object p0

    .line 264
    .restart local p0
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 267
    .local v4, tempBufLen:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v4, :cond_3

    .line 268
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 270
    .local v2, temp:C
    const/16 v5, 0x3b1

    if-lt v2, v5, :cond_1

    const/16 v5, 0x3c9

    if-gt v2, v5, :cond_1

    .line 271
    const/16 v5, 0x3c2

    if-ne v2, v5, :cond_2

    .line 272
    const/16 v2, 0x3a3

    .line 276
    :cond_1
    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 267
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 274
    :cond_2
    add-int/lit8 v5, v2, -0x20

    int-to-char v2, v5

    goto :goto_2

    .line 278
    .end local v2           #temp:C
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static isGreekInput(C)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 289
    const/16 v0, 0x386

    if-eq v0, p0, :cond_2

    const/16 v0, 0x388

    if-gt v0, p0, :cond_0

    const/16 v0, 0x38a

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x38c

    if-gt v0, p0, :cond_1

    const/16 v0, 0x38f

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0x3c2

    if-ne v0, p0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isGreekSmallLetter(C)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 282
    const/16 v0, 0x3b1

    if-gt v0, p0, :cond_0

    const/16 v0, 0x3c9

    if-gt p0, v0, :cond_0

    .line 283
    const/4 v0, 0x1

    .line 285
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSIPGreek()Z
    .locals 3

    .prologue
    .line 164
    const-string v1, "el"

    sget-object v2, Lcom/android/mms/ui/GreekInputHandler;->SIPLanguage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 166
    .local v0, result:Z
    return v0
.end method

.method private setUpperCase(Z)V
    .locals 6
    .parameter "value"

    .prologue
    .line 150
    :try_start_0
    const-string v3, "Mms/GreekInputHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set upper:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.mms.LANGUAGE_ACTION"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 153
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "caps_status"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 154
    iget-object v0, p0, Lcom/android/mms/ui/GreekInputHandler;->mActivity:Landroid/app/Activity;

    .line 155
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0, v2}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    .end local v0           #context:Landroid/content/Context;
    .end local v2           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 156
    :catch_0
    move-exception v1

    .line 157
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private updateCapsStatus()V
    .locals 5

    .prologue
    .line 136
    iget-object v3, p0, Lcom/android/mms/ui/GreekInputHandler;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->isBodyFocused()Z

    move-result v1

    .line 137
    .local v1, isBodyFocused:Z
    iget-object v3, p0, Lcom/android/mms/ui/GreekInputHandler;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->isMms()Z

    move-result v2

    .line 138
    .local v2, isMms:Z
    iget-object v3, p0, Lcom/android/mms/ui/GreekInputHandler;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getInputmode(Landroid/content/Context;)I

    move-result v0

    .line 140
    .local v0, inputMode:I
    const-string v3, "el"

    sget-object v4, Lcom/android/mms/ui/GreekInputHandler;->SIPLanguage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    if-nez v2, :cond_0

    .line 142
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/mms/ui/GreekInputHandler;->setUpperCase(Z)V

    .line 146
    :goto_0
    return-void

    .line 144
    :cond_0
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/mms/ui/GreekInputHandler;->setUpperCase(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreate()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/mms/ui/GreekInputHandler;->mIntentFilter:Landroid/content/IntentFilter;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/GreekInputHandler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 73
    iget-object v0, p0, Lcom/android/mms/ui/GreekInputHandler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "inputLanguageAction"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/android/mms/ui/GreekInputHandler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.swype.android.broadcast"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/GreekInputHandler;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/ui/GreekInputHandler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p0, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 79
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mms/ui/GreekInputHandler;->isUiVisible:Z

    .line 81
    const-string v0, "Mms/GreekInputHandler"

    const-string v1, "onActivityCreate"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public onActivityDestroyed()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/mms/ui/GreekInputHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 87
    const-string v0, "Mms/GreekInputHandler"

    const-string v1, "onActivityDestroyed"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public onActivityPause()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 100
    invoke-direct {p0, v0}, Lcom/android/mms/ui/GreekInputHandler;->setUpperCase(Z)V

    .line 101
    sput-boolean v0, Lcom/android/mms/ui/GreekInputHandler;->isUiVisible:Z

    .line 103
    const-string v0, "Mms/GreekInputHandler"

    const-string v1, "onActivityResume"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public onActivityResume()V
    .locals 2

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/mms/ui/GreekInputHandler;->updateCapsStatus()V

    .line 93
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mms/ui/GreekInputHandler;->isUiVisible:Z

    .line 95
    const-string v0, "Mms/GreekInputHandler"

    const-string v1, "onActivityResume"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 117
    const-string v2, "AxT9IME.inputLanguage"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, skpdLanguage:Ljava/lang/String;
    const-string v2, "swype.inputLanguage"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, swypeLanguage:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 122
    sput-object v0, Lcom/android/mms/ui/GreekInputHandler;->SIPLanguage:Ljava/lang/String;

    .line 124
    :cond_0
    if-eqz v1, :cond_1

    .line 125
    sput-object v1, Lcom/android/mms/ui/GreekInputHandler;->SIPLanguage:Ljava/lang/String;

    .line 127
    :cond_1
    const-string v2, "Mms/GreekInputHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive, skpd lang:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    sget-boolean v2, Lcom/android/mms/ui/GreekInputHandler;->isUiVisible:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 131
    invoke-direct {p0}, Lcom/android/mms/ui/GreekInputHandler;->updateCapsStatus()V

    .line 133
    :cond_2
    return-void
.end method

.method public updateCurrentStatus()V
    .locals 2

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/android/mms/ui/GreekInputHandler;->updateCapsStatus()V

    .line 110
    const-string v0, "Mms/GreekInputHandler"

    const-string v1, "updateCurrentStatus"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    return-void
.end method
