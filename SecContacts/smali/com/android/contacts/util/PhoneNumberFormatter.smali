.class public final Lcom/android/contacts/util/PhoneNumberFormatter;
.super Ljava/lang/Object;
.source "PhoneNumberFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/util/PhoneNumberFormatter$TextWatcherLoadAsyncTask;
    }
.end annotation


# static fields
.field public static isMakingWatcher:Z

.field public static prevTextView:Landroid/widget/TextView;

.field public static prevWatcher:Lcom/android/contacts/util/AltPhoneNumberFormattingTextWatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    sput-object v0, Lcom/android/contacts/util/PhoneNumberFormatter;->prevTextView:Landroid/widget/TextView;

    .line 29
    sput-object v0, Lcom/android/contacts/util/PhoneNumberFormatter;->prevWatcher:Lcom/android/contacts/util/AltPhoneNumberFormattingTextWatcher;

    .line 30
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/contacts/util/PhoneNumberFormatter;->isMakingWatcher:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final setPhoneNumberFormattingTextWatcher(Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 3
    .parameter "context"
    .parameter "textView"

    .prologue
    const/4 v0, 0x0

    .line 77
    sget-boolean v1, Lcom/android/contacts/util/PhoneNumberFormatter;->isMakingWatcher:Z

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    sget-object v1, Lcom/android/contacts/util/PhoneNumberFormatter;->prevTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    :goto_0
    return-void

    .line 81
    :cond_0
    sget-object v1, Lcom/android/contacts/util/PhoneNumberFormatter;->prevTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/contacts/util/PhoneNumberFormatter;->prevWatcher:Lcom/android/contacts/util/AltPhoneNumberFormattingTextWatcher;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/contacts/util/PhoneNumberFormatter;->prevTextView:Landroid/widget/TextView;

    instance-of v1, v1, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    if-eqz v1, :cond_1

    .line 82
    sget-object v1, Lcom/android/contacts/util/PhoneNumberFormatter;->prevTextView:Landroid/widget/TextView;

    instance-of v1, v1, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    if-eqz v1, :cond_1

    .line 83
    sget-object v1, Lcom/android/contacts/util/PhoneNumberFormatter;->prevTextView:Landroid/widget/TextView;

    sget-object v2, Lcom/android/contacts/util/PhoneNumberFormatter;->prevWatcher:Lcom/android/contacts/util/AltPhoneNumberFormattingTextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 84
    sput-object v0, Lcom/android/contacts/util/PhoneNumberFormatter;->prevWatcher:Lcom/android/contacts/util/AltPhoneNumberFormattingTextWatcher;

    .line 88
    :cond_1
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/contacts/util/PhoneNumberFormatter;->isMakingWatcher:Z

    .line 90
    new-instance v1, Lcom/android/contacts/util/PhoneNumberFormatter$TextWatcherLoadAsyncTask;

    invoke-static {p0}, Lcom/android/contacts/ContactsUtils;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/android/contacts/util/PhoneNumberFormatter$TextWatcherLoadAsyncTask;-><init>(Ljava/lang/String;Landroid/widget/TextView;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    check-cast v0, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
