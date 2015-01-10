.class Lcom/android/phone/CallTextToSpeech$TtsListener;
.super Ljava/lang/Object;
.source "CallTextToSpeech.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;
.implements Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallTextToSpeech;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TtsListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallTextToSpeech;


# direct methods
.method private constructor <init>(Lcom/android/phone/CallTextToSpeech;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/phone/CallTextToSpeech$TtsListener;->this$0:Lcom/android/phone/CallTextToSpeech;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/CallTextToSpeech;Lcom/android/phone/CallTextToSpeech$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/android/phone/CallTextToSpeech$TtsListener;-><init>(Lcom/android/phone/CallTextToSpeech;)V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .locals 5
    .parameter "status"

    .prologue
    const/4 v4, 0x1

    .line 134
    if-nez p1, :cond_6

    .line 136
    const-string v1, "feature_chn"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "feature_hktw"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 137
    :cond_0
    const-string v1, "CallTextToSpeech"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onInit...TTS : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/CallTextToSpeech$TtsListener;->this$0:Lcom/android/phone/CallTextToSpeech;

    #getter for: Lcom/android/phone/CallTextToSpeech;->mTtsId:I
    invoke-static {v3}, Lcom/android/phone/CallTextToSpeech;->access$100(Lcom/android/phone/CallTextToSpeech;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 138
    iget-object v1, p0, Lcom/android/phone/CallTextToSpeech$TtsListener;->this$0:Lcom/android/phone/CallTextToSpeech;

    #setter for: Lcom/android/phone/CallTextToSpeech;->IsTtsInitiated:Z
    invoke-static {v1, v4}, Lcom/android/phone/CallTextToSpeech;->access$202(Lcom/android/phone/CallTextToSpeech;Z)Z

    .line 140
    iget-object v1, p0, Lcom/android/phone/CallTextToSpeech$TtsListener;->this$0:Lcom/android/phone/CallTextToSpeech;

    #getter for: Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;
    invoke-static {v1}, Lcom/android/phone/CallTextToSpeech;->access$300(Lcom/android/phone/CallTextToSpeech;)Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 141
    iget-object v1, p0, Lcom/android/phone/CallTextToSpeech$TtsListener;->this$0:Lcom/android/phone/CallTextToSpeech;

    iget-object v2, p0, Lcom/android/phone/CallTextToSpeech$TtsListener;->this$0:Lcom/android/phone/CallTextToSpeech;

    #getter for: Lcom/android/phone/CallTextToSpeech;->mTtsId:I
    invoke-static {v2}, Lcom/android/phone/CallTextToSpeech;->access$100(Lcom/android/phone/CallTextToSpeech;)I

    move-result v2

    #calls: Lcom/android/phone/CallTextToSpeech;->speakTts(I)V
    invoke-static {v1, v2}, Lcom/android/phone/CallTextToSpeech;->access$400(Lcom/android/phone/CallTextToSpeech;I)V

    .line 175
    :cond_1
    :goto_0
    return-void

    .line 146
    :cond_2
    const/4 v0, -0x2

    .line 148
    .local v0, result:I
    iget-object v1, p0, Lcom/android/phone/CallTextToSpeech$TtsListener;->this$0:Lcom/android/phone/CallTextToSpeech;

    #getter for: Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;
    invoke-static {v1}, Lcom/android/phone/CallTextToSpeech;->access$300(Lcom/android/phone/CallTextToSpeech;)Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 149
    iget-object v1, p0, Lcom/android/phone/CallTextToSpeech$TtsListener;->this$0:Lcom/android/phone/CallTextToSpeech;

    #getter for: Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;
    invoke-static {v1}, Lcom/android/phone/CallTextToSpeech;->access$300(Lcom/android/phone/CallTextToSpeech;)Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v0

    .line 151
    :cond_3
    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    const/4 v1, -0x2

    if-ne v0, v1, :cond_5

    .line 154
    :cond_4
    const-string v1, "CallTextToSpeech"

    const-string v2, "Language is not available."

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 164
    :cond_5
    const-string v1, "CallTextToSpeech"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onInit...TTS : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/CallTextToSpeech$TtsListener;->this$0:Lcom/android/phone/CallTextToSpeech;

    #getter for: Lcom/android/phone/CallTextToSpeech;->mTtsId:I
    invoke-static {v3}, Lcom/android/phone/CallTextToSpeech;->access$100(Lcom/android/phone/CallTextToSpeech;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 165
    iget-object v1, p0, Lcom/android/phone/CallTextToSpeech$TtsListener;->this$0:Lcom/android/phone/CallTextToSpeech;

    #setter for: Lcom/android/phone/CallTextToSpeech;->IsTtsInitiated:Z
    invoke-static {v1, v4}, Lcom/android/phone/CallTextToSpeech;->access$202(Lcom/android/phone/CallTextToSpeech;Z)Z

    .line 167
    iget-object v1, p0, Lcom/android/phone/CallTextToSpeech$TtsListener;->this$0:Lcom/android/phone/CallTextToSpeech;

    #getter for: Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;
    invoke-static {v1}, Lcom/android/phone/CallTextToSpeech;->access$300(Lcom/android/phone/CallTextToSpeech;)Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 168
    iget-object v1, p0, Lcom/android/phone/CallTextToSpeech$TtsListener;->this$0:Lcom/android/phone/CallTextToSpeech;

    iget-object v2, p0, Lcom/android/phone/CallTextToSpeech$TtsListener;->this$0:Lcom/android/phone/CallTextToSpeech;

    #getter for: Lcom/android/phone/CallTextToSpeech;->mTtsId:I
    invoke-static {v2}, Lcom/android/phone/CallTextToSpeech;->access$100(Lcom/android/phone/CallTextToSpeech;)I

    move-result v2

    #calls: Lcom/android/phone/CallTextToSpeech;->speakTts(I)V
    invoke-static {v1, v2}, Lcom/android/phone/CallTextToSpeech;->access$400(Lcom/android/phone/CallTextToSpeech;I)V

    goto :goto_0

    .line 173
    .end local v0           #result:I
    :cond_6
    const-string v1, "CallTextToSpeech"

    const-string v2, "Could not initialize TextToSpeech."

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onUtteranceCompleted(Ljava/lang/String;)V
    .locals 3
    .parameter "utteranceId"

    .prologue
    .line 178
    const-string v0, "CallTextToSpeech"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUtteranceCompleted...TTS : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallTextToSpeech$TtsListener;->this$0:Lcom/android/phone/CallTextToSpeech;

    #getter for: Lcom/android/phone/CallTextToSpeech;->mTtsId:I
    invoke-static {v2}, Lcom/android/phone/CallTextToSpeech;->access$100(Lcom/android/phone/CallTextToSpeech;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 179
    iget-object v0, p0, Lcom/android/phone/CallTextToSpeech$TtsListener;->this$0:Lcom/android/phone/CallTextToSpeech;

    invoke-virtual {v0}, Lcom/android/phone/CallTextToSpeech;->stopTts()V

    .line 180
    return-void
.end method
