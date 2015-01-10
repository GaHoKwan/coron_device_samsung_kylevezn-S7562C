.class Lcom/android/phone/LGTGlobalAutoRoaming$3;
.super Ljava/lang/Object;
.source "LGTGlobalAutoRoaming.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/LGTGlobalAutoRoaming;->dataRoamingSettingDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/LGTGlobalAutoRoaming;


# direct methods
.method constructor <init>(Lcom/android/phone/LGTGlobalAutoRoaming;)V
    .locals 0
    .parameter

    .prologue
    .line 224
    iput-object p1, p0, Lcom/android/phone/LGTGlobalAutoRoaming$3;->this$0:Lcom/android/phone/LGTGlobalAutoRoaming;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 226
    iget-object v0, p0, Lcom/android/phone/LGTGlobalAutoRoaming$3;->this$0:Lcom/android/phone/LGTGlobalAutoRoaming;

    #getter for: Lcom/android/phone/LGTGlobalAutoRoaming;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/phone/LGTGlobalAutoRoaming;->access$200(Lcom/android/phone/LGTGlobalAutoRoaming;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 227
    iget-object v0, p0, Lcom/android/phone/LGTGlobalAutoRoaming$3;->this$0:Lcom/android/phone/LGTGlobalAutoRoaming;

    iget-object v0, v0, Lcom/android/phone/LGTGlobalAutoRoaming;->mContext:Landroid/content/Context;

    const v1, 0x7f0e05c4

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 228
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v3

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    .line 229
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/android/phone/LGTGlobalAutoRoaming$3;->this$0:Lcom/android/phone/LGTGlobalAutoRoaming;

    #calls: Lcom/android/phone/LGTGlobalAutoRoaming;->enableDataConnection(Z)V
    invoke-static {v0, v2}, Lcom/android/phone/LGTGlobalAutoRoaming;->access$300(Lcom/android/phone/LGTGlobalAutoRoaming;Z)V

    .line 231
    :cond_0
    return-void
.end method
