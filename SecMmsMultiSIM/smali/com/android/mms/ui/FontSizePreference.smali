.class public Lcom/android/mms/ui/FontSizePreference;
.super Landroid/preference/ListPreference;
.source "FontSizePreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "FontListPreference"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFontListAdapter:Lcom/android/mms/ui/FontSizeAdapter;

.field private mFontSize:[Ljava/lang/String;

.field private mFontSizeName:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    iput-object v0, p0, Lcom/android/mms/ui/FontSizePreference;->mFontListAdapter:Lcom/android/mms/ui/FontSizeAdapter;

    .line 26
    iput-object v0, p0, Lcom/android/mms/ui/FontSizePreference;->mContext:Landroid/content/Context;

    .line 28
    iput-object v0, p0, Lcom/android/mms/ui/FontSizePreference;->mFontSize:[Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/android/mms/ui/FontSizePreference;->mFontSizeName:[Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lcom/android/mms/ui/FontSizePreference;->mContext:Landroid/content/Context;

    .line 40
    iget-object v0, p0, Lcom/android/mms/ui/FontSizePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/FontSizePreference;->mFontSize:[Ljava/lang/String;

    .line 41
    iget-object v0, p0, Lcom/android/mms/ui/FontSizePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/FontSizePreference;->mFontSizeName:[Ljava/lang/String;

    .line 43
    return-void
.end method

.method private savePreferences(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 46
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/FontSizePreference;->mFontSize:[Ljava/lang/String;

    array-length v1, v1

    if-lt p1, v1, :cond_1

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/FontSizePreference;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 51
    .local v0, editPrefs:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_key_font_size"

    iget-object v2, p0, Lcom/android/mms/ui/FontSizePreference;->mFontSize:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 53
    const-string v1, "pref_key_font_size_by_volume_key_font_size"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 56
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    iget-object v1, p0, Lcom/android/mms/ui/FontSizePreference;->mFontSizeName:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {p0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "item"

    .prologue
    .line 91
    invoke-direct {p0, p2}, Lcom/android/mms/ui/FontSizePreference;->savePreferences(I)V

    .line 92
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 93
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/FontSizePreference;->mFontListAdapter:Lcom/android/mms/ui/FontSizeAdapter;

    .line 97
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onDialogClosed(Z)V

    .line 98
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 5
    .parameter "builder"

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .local v0, fontSizes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/mms/ui/FontSizePreference;->mFontSize:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 73
    iget-object v3, p0, Lcom/android/mms/ui/FontSizePreference;->mFontSize:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 74
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/FontSizePreference;->mFontListAdapter:Lcom/android/mms/ui/FontSizeAdapter;

    if-nez v3, :cond_1

    .line 75
    new-instance v3, Lcom/android/mms/ui/FontSizeAdapter;

    iget-object v4, p0, Lcom/android/mms/ui/FontSizePreference;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v0}, Lcom/android/mms/ui/FontSizeAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v3, p0, Lcom/android/mms/ui/FontSizePreference;->mFontListAdapter:Lcom/android/mms/ui/FontSizeAdapter;

    .line 76
    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/FontSizePreference;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSelectedFontSizeIndexByPref(Landroid/content/Context;)I

    move-result v2

    .line 79
    .local v2, selected:I
    iget-object v3, p0, Lcom/android/mms/ui/FontSizePreference;->mFontListAdapter:Lcom/android/mms/ui/FontSizeAdapter;

    invoke-virtual {p1, v3, v2, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 80
    return-void
.end method

.method public setSummaryByIndex(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 62
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/FontSizePreference;->mFontSize:[Ljava/lang/String;

    array-length v0, v0

    if-le p1, v0, :cond_1

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/FontSizePreference;->mFontSizeName:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 83
    const v0, 0x7f070003

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 84
    const v0, 0x7f070004

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 86
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->showDialog(Landroid/os/Bundle;)V

    .line 87
    return-void
.end method
