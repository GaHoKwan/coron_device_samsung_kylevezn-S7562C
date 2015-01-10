.class Lcom/android/phone/callsettings/IntCallServicePreference$1;
.super Ljava/lang/Object;
.source "IntCallServicePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/IntCallServicePreference;->setInitValueAndLayout(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/IntCallServicePreference;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/IntCallServicePreference;)V
    .locals 0
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/phone/callsettings/IntCallServicePreference$1;->this$0:Lcom/android/phone/callsettings/IntCallServicePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/phone/callsettings/IntCallServicePreference$1;->this$0:Lcom/android/phone/callsettings/IntCallServicePreference;

    iget-object v0, v0, Lcom/android/phone/callsettings/IntCallServicePreference;->mAutoRadio:Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/phone/callsettings/IntCallServicePreference$1;->this$0:Lcom/android/phone/callsettings/IntCallServicePreference;

    iget-object v0, v0, Lcom/android/phone/callsettings/IntCallServicePreference;->mAutoRadio:Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->toggle()V

    .line 127
    iget-object v0, p0, Lcom/android/phone/callsettings/IntCallServicePreference$1;->this$0:Lcom/android/phone/callsettings/IntCallServicePreference;

    iget-object v0, v0, Lcom/android/phone/callsettings/IntCallServicePreference;->mManualRadio:Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->toggle()V

    .line 128
    iget-object v0, p0, Lcom/android/phone/callsettings/IntCallServicePreference$1;->this$0:Lcom/android/phone/callsettings/IntCallServicePreference;

    iget-object v0, v0, Lcom/android/phone/callsettings/IntCallServicePreference;->mManualSvcNumber:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 130
    :cond_0
    return-void
.end method
