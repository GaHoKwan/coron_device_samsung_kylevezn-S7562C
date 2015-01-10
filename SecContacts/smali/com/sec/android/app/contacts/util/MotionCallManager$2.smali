.class Lcom/sec/android/app/contacts/util/MotionCallManager$2;
.super Ljava/lang/Object;
.source "MotionCallManager.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/util/MotionCallManager;->speakMakeCallMsg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/util/MotionCallManager;

.field final synthetic val$locale:Ljava/util/Locale;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/util/MotionCallManager;Ljava/util/Locale;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/sec/android/app/contacts/util/MotionCallManager$2;->this$0:Lcom/sec/android/app/contacts/util/MotionCallManager;

    iput-object p2, p0, Lcom/sec/android/app/contacts/util/MotionCallManager$2;->val$locale:Ljava/util/Locale;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .locals 5
    .parameter "status"

    .prologue
    .line 186
    if-nez p1, :cond_0

    .line 187
    iget-object v1, p0, Lcom/sec/android/app/contacts/util/MotionCallManager$2;->this$0:Lcom/sec/android/app/contacts/util/MotionCallManager;

    #getter for: Lcom/sec/android/app/contacts/util/MotionCallManager;->mTts:Landroid/speech/tts/TextToSpeech;
    invoke-static {v1}, Lcom/sec/android/app/contacts/util/MotionCallManager;->access$500(Lcom/sec/android/app/contacts/util/MotionCallManager;)Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/contacts/util/MotionCallManager$2;->val$locale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v0

    .line 188
    .local v0, result:I
    packed-switch v0, :pswitch_data_0

    .line 195
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/util/MotionCallManager$2;->this$0:Lcom/sec/android/app/contacts/util/MotionCallManager;

    #getter for: Lcom/sec/android/app/contacts/util/MotionCallManager;->mTts:Landroid/speech/tts/TextToSpeech;
    invoke-static {v1}, Lcom/sec/android/app/contacts/util/MotionCallManager;->access$500(Lcom/sec/android/app/contacts/util/MotionCallManager;)Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/contacts/util/MotionCallManager$2;->this$0:Lcom/sec/android/app/contacts/util/MotionCallManager;

    #getter for: Lcom/sec/android/app/contacts/util/MotionCallManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/app/contacts/util/MotionCallManager;->access$200(Lcom/sec/android/app/contacts/util/MotionCallManager;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0d037e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/app/contacts/util/MotionCallManager$2;->this$0:Lcom/sec/android/app/contacts/util/MotionCallManager;

    #getter for: Lcom/sec/android/app/contacts/util/MotionCallManager;->myHashAlarm:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/sec/android/app/contacts/util/MotionCallManager;->access$600(Lcom/sec/android/app/contacts/util/MotionCallManager;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 201
    .end local v0           #result:I
    :goto_1
    return-void

    .line 192
    .restart local v0       #result:I
    :pswitch_0
    const-string v1, "MotionCallManager"

    const-string v2, "Language is not supported"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v1, p0, Lcom/sec/android/app/contacts/util/MotionCallManager$2;->this$0:Lcom/sec/android/app/contacts/util/MotionCallManager;

    #getter for: Lcom/sec/android/app/contacts/util/MotionCallManager;->mTts:Landroid/speech/tts/TextToSpeech;
    invoke-static {v1}, Lcom/sec/android/app/contacts/util/MotionCallManager;->access$500(Lcom/sec/android/app/contacts/util/MotionCallManager;)Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    goto :goto_0

    .line 199
    .end local v0           #result:I
    :cond_0
    const-string v1, "MotionCallManager"

    const-string v2, "Failed to initialize TextToSpeech"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 188
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
