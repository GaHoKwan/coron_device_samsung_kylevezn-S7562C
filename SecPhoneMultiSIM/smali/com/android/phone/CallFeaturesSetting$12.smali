.class Lcom/android/phone/CallFeaturesSetting$12;
.super Landroid/os/Handler;
.source "CallFeaturesSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallFeaturesSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallFeaturesSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/CallFeaturesSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 2964
    iput-object p1, p0, Lcom/android/phone/CallFeaturesSetting$12;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2967
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 2998
    :cond_0
    :goto_0
    return-void

    .line 2969
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "error"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_1

    .line 2970
    const-string v4, "CallFeaturesSetting"

    const-string v5, "OEM_HIDDEN_GET_DDTM_MODE Exception Occur!!!"

    invoke-static {v4, v5, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_0

    .line 2974
    :cond_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "response"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    check-cast v1, [B

    .line 2976
    .local v1, response:[B
    array-length v5, v1

    if-nez v5, :cond_2

    .line 2977
    const-string v4, "CallFeaturesSetting"

    const-string v5, "No answer for OEM_HIDDEN_GET_DDTM_MODE response"

    invoke-static {v4, v5, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_0

    .line 2981
    :cond_2
    aget-byte v0, v1, v4

    .line 2982
    .local v0, mode:I
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting$12;->this$0:Lcom/android/phone/CallFeaturesSetting;

    const v6, 0x7f0e0444

    invoke-virtual {v5, v6}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2983
    .local v2, value:Ljava/lang/String;
    if-ne v0, v3, :cond_3

    .line 2984
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting$12;->this$0:Lcom/android/phone/CallFeaturesSetting;

    const v6, 0x7f0e0445

    invoke-virtual {v5, v6}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2986
    :cond_3
    const-string v5, "CallFeaturesSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OEM_HIDDEN_GET_DDTM_MODE : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2987
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting$12;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #getter for: Lcom/android/phone/CallFeaturesSetting;->mButtonDDTM:Landroid/preference/CheckBoxPreference;
    invoke-static {v5}, Lcom/android/phone/CallFeaturesSetting;->access$2500(Lcom/android/phone/CallFeaturesSetting;)Landroid/preference/CheckBoxPreference;

    move-result-object v5

    if-eqz v0, :cond_4

    :goto_1
    invoke-virtual {v5, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    :cond_4
    move v3, v4

    goto :goto_1

    .line 2990
    .end local v0           #mode:I
    .end local v1           #response:[B
    .end local v2           #value:Ljava/lang/String;
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "error"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 2991
    const-string v5, "CallFeaturesSetting"

    const-string v6, "OEM_HIDDEN_SET_DDTM_MODE Exception Occur!!!"

    invoke-static {v5, v6, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2992
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting$12;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #getter for: Lcom/android/phone/CallFeaturesSetting;->mButtonDDTM:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/phone/CallFeaturesSetting;->access$2500(Lcom/android/phone/CallFeaturesSetting;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 2967
    nop

    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
