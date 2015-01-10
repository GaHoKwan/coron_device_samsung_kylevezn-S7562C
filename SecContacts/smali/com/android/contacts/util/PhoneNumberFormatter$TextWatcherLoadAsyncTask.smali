.class Lcom/android/contacts/util/PhoneNumberFormatter$TextWatcherLoadAsyncTask;
.super Landroid/os/AsyncTask;
.source "PhoneNumberFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/util/PhoneNumberFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextWatcherLoadAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/contacts/util/AltPhoneNumberFormattingTextWatcher;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCountryCode:Ljava/lang/String;

.field private final mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/widget/TextView;)V
    .locals 0
    .parameter "countryCode"
    .parameter "textView"

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/contacts/util/PhoneNumberFormatter$TextWatcherLoadAsyncTask;->mCountryCode:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/android/contacts/util/PhoneNumberFormatter$TextWatcherLoadAsyncTask;->mTextView:Landroid/widget/TextView;

    .line 45
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/contacts/util/AltPhoneNumberFormattingTextWatcher;
    .locals 2
    .parameter "params"

    .prologue
    .line 49
    new-instance v0, Lcom/android/contacts/util/AltPhoneNumberFormattingTextWatcher;

    iget-object v1, p0, Lcom/android/contacts/util/PhoneNumberFormatter$TextWatcherLoadAsyncTask;->mCountryCode:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/contacts/util/AltPhoneNumberFormattingTextWatcher;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/contacts/util/PhoneNumberFormatter$TextWatcherLoadAsyncTask;->doInBackground([Ljava/lang/Void;)Lcom/android/contacts/util/AltPhoneNumberFormattingTextWatcher;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/contacts/util/AltPhoneNumberFormattingTextWatcher;)V
    .locals 1
    .parameter "watcher"

    .prologue
    .line 54
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/util/PhoneNumberFormatter$TextWatcherLoadAsyncTask;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 60
    iget-object v0, p0, Lcom/android/contacts/util/PhoneNumberFormatter$TextWatcherLoadAsyncTask;->mTextView:Landroid/widget/TextView;

    sput-object v0, Lcom/android/contacts/util/PhoneNumberFormatter;->prevTextView:Landroid/widget/TextView;

    .line 61
    sput-object p1, Lcom/android/contacts/util/PhoneNumberFormatter;->prevWatcher:Lcom/android/contacts/util/AltPhoneNumberFormattingTextWatcher;

    .line 62
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/contacts/util/PhoneNumberFormatter;->isMakingWatcher:Z

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    check-cast p1, Lcom/android/contacts/util/AltPhoneNumberFormattingTextWatcher;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/contacts/util/PhoneNumberFormatter$TextWatcherLoadAsyncTask;->onPostExecute(Lcom/android/contacts/util/AltPhoneNumberFormattingTextWatcher;)V

    return-void
.end method
