/*
 * Copyright (C) 2017 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.xiaomi.parts.preferences;

import android.content.Context;
import android.util.AttributeSet;

import androidx.core.content.res.TypedArrayUtils;
import androidx.preference.CheckBoxPreference;

import com.xiaomi.parts.R;

/**
 * Check box preference with check box replaced by radio button.
 *
 * Functionally speaking, it's actually a CheckBoxPreference. We only modified
 * the widget to RadioButton to make it "look like" a RadioButtonPreference.
 *
 * In other words, there's no "RadioButtonPreferenceGroup" in this
 * implementation. When you check one RadioButtonPreference, if you want to
 * uncheck all the other preferences, you should do that by code yourself.
 */

public class RadioButtonPreference extends CheckBoxPreference {

    public RadioButtonPreference(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        setWidgetLayoutResource(R.layout.preference_widget_radiobutton);
    }

    public RadioButtonPreference(Context context, AttributeSet attrs) {
        this(context, attrs, TypedArrayUtils.getAttr(context,
                androidx.preference.R.attr.preferenceStyle,
                android.R.attr.preferenceStyle));
    }

    public RadioButtonPreference(Context context) {
        this(context, null);
    }
}
