/*
 * Copyright (C) 2016 The CyanogenMod Project
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

#include <utils/Errors.h>

#include <assert.h>

namespace android {
    class Parcel {
        status_t writeString16(const unsigned short* str, size_t len);
        status_t writeString16(const char16_t* str, size_t len);
    };

    class String8 {
        status_t setTo(const unsigned short* other, size_t numChars);
        status_t setTo(const char16_t* other, size_t numChars);
    };

    status_t Parcel::writeString16(const unsigned short* str, size_t len)
    {
        return writeString16((const char16_t*)str, len);
    }

    status_t String8::setTo(const unsigned short* other, size_t numChars)
    {
        return setTo((const char16_t*)other, numChars);
    }
}
