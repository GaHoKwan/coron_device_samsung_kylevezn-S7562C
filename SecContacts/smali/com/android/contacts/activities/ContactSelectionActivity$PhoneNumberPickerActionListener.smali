.class final Lcom/android/contacts/activities/ContactSelectionActivity$PhoneNumberPickerActionListener;
.super Ljava/lang/Object;
.source "ContactSelectionActivity.java"

# interfaces
.implements Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/ContactSelectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PhoneNumberPickerActionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/ContactSelectionActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/activities/ContactSelectionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 664
    iput-object p1, p0, Lcom/android/contacts/activities/ContactSelectionActivity$PhoneNumberPickerActionListener;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/activities/ContactSelectionActivity;Lcom/android/contacts/activities/ContactSelectionActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 664
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/ContactSelectionActivity$PhoneNumberPickerActionListener;-><init>(Lcom/android/contacts/activities/ContactSelectionActivity;)V

    return-void
.end method


# virtual methods
.method public onHomeInActionBarSelected()V
    .locals 1

    .prologue
    .line 677
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity$PhoneNumberPickerActionListener;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 678
    return-void
.end method

.method public onPickPhoneNumberAction(Landroid/net/Uri;)V
    .locals 1
    .parameter "dataUri"

    .prologue
    .line 668
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity$PhoneNumberPickerActionListener;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    invoke-virtual {v0, p1}, Lcom/android/contacts/activities/ContactSelectionActivity;->returnPickerResult(Landroid/net/Uri;)V

    .line 669
    return-void
.end method

.method public onShortcutIntentCreated(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 673
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity$PhoneNumberPickerActionListener;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    invoke-virtual {v0, p1}, Lcom/android/contacts/activities/ContactSelectionActivity;->returnPickerResult(Landroid/content/Intent;)V

    .line 674
    return-void
.end method
