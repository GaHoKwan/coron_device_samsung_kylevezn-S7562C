.class Lcom/android/phone/callsettings/PhoneNumberLocator$10;
.super Ljava/lang/Object;
.source "PhoneNumberLocator.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/PhoneNumberLocator;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/PhoneNumberLocator;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/PhoneNumberLocator;)V
    .locals 0
    .parameter

    .prologue
    .line 1205
    iput-object p1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator$10;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1211
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator$10;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocator;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/PhoneNumberLocator;->startCopyThread()V

    .line 1213
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1215
    return-void
.end method
