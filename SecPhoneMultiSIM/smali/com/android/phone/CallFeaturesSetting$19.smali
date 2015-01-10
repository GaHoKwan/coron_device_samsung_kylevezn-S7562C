.class Lcom/android/phone/CallFeaturesSetting$19;
.super Ljava/lang/Object;
.source "CallFeaturesSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CallFeaturesSetting;->makeAreaCodeDialog()Landroid/app/Dialog;
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
    .line 4061
    iput-object p1, p0, Lcom/android/phone/CallFeaturesSetting$19;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 4064
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting$19;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #calls: Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/android/phone/CallFeaturesSetting;->access$3900(Lcom/android/phone/CallFeaturesSetting;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "area_code_enabled"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 4068
    .local v2, value:I
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting$19;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #getter for: Lcom/android/phone/CallFeaturesSetting;->areaCodeText:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/phone/CallFeaturesSetting;->access$4000(Lcom/android/phone/CallFeaturesSetting;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4069
    .local v0, data:Ljava/lang/String;
    move-object v1, v0

    .line 4070
    .local v1, tempareaCode:Ljava/lang/String;
    const-string v3, " "

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4072
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 4073
    const-string v0, ""

    .line 4075
    :cond_0
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting$19;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #calls: Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/android/phone/CallFeaturesSetting;->access$4100(Lcom/android/phone/CallFeaturesSetting;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "area_code_value"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 4077
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting$19;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #calls: Lcom/android/phone/CallFeaturesSetting;->updateSummaryAutoAreaCode(ILjava/lang/String;)V
    invoke-static {v3, v2, v0}, Lcom/android/phone/CallFeaturesSetting;->access$3500(Lcom/android/phone/CallFeaturesSetting;ILjava/lang/String;)V

    .line 4078
    return-void
.end method
