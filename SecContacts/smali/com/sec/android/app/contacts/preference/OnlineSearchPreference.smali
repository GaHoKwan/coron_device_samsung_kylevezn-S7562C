.class public final Lcom/sec/android/app/contacts/preference/OnlineSearchPreference;
.super Landroid/preference/CheckBoxPreference;
.source "OnlineSearchPreference.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPreferences:Lcom/android/contacts/preference/ContactsPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 36
    invoke-direct {p0}, Lcom/sec/android/app/contacts/preference/OnlineSearchPreference;->prepare()V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    invoke-direct {p0}, Lcom/sec/android/app/contacts/preference/OnlineSearchPreference;->prepare()V

    .line 42
    return-void
.end method

.method private prepare()V
    .locals 2

    .prologue
    .line 45
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/preference/OnlineSearchPreference;->mContext:Landroid/content/Context;

    .line 46
    new-instance v0, Lcom/android/contacts/preference/ContactsPreferences;

    iget-object v1, p0, Lcom/sec/android/app/contacts/preference/OnlineSearchPreference;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/contacts/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/preference/OnlineSearchPreference;->mPreferences:Lcom/android/contacts/preference/ContactsPreferences;

    .line 47
    iget-object v0, p0, Lcom/sec/android/app/contacts/preference/OnlineSearchPreference;->mPreferences:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v0}, Lcom/android/contacts/preference/ContactsPreferences;->getOnlineSearch()I

    move-result v0

    if-nez v0, :cond_0

    .line 48
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 52
    :goto_0
    return-void

    .line 50
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected persistBoolean(Z)Z
    .locals 5
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 56
    move v0, p1

    .line 57
    .local v0, newValue:Z
    iget-object v4, p0, Lcom/sec/android/app/contacts/preference/OnlineSearchPreference;->mPreferences:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v4}, Lcom/android/contacts/preference/ContactsPreferences;->getOnlineSearch()I

    move-result v4

    if-nez v4, :cond_2

    move v1, v2

    .line 60
    .local v1, oldValue:Z
    :goto_0
    if-eq v0, v1, :cond_1

    .line 61
    iget-object v4, p0, Lcom/sec/android/app/contacts/preference/OnlineSearchPreference;->mPreferences:Lcom/android/contacts/preference/ContactsPreferences;

    if-eqz v0, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {v4, v2}, Lcom/android/contacts/preference/ContactsPreferences;->setOnlineSearch(I)V

    .line 63
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 65
    :cond_1
    return v3

    .end local v1           #oldValue:Z
    :cond_2
    move v1, v3

    .line 57
    goto :goto_0
.end method
