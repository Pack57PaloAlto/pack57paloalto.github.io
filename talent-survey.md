---
layout: default
title: Parent/Guardian Talent Survey
subtitle: Help Us Build a Stronger Pack
permalink: /talent-survey/
---

<div class="max-w-3xl mx-auto mt-8">
    <div class="p-4 border-l-4 rounded-r-lg bg-blue-50 border-cub-blue">
        <div class="flex">
            <div class="flex-shrink-0">
                <svg class="w-5 h-5 text-cub-blue" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor">
                    <path fill-rule="evenodd" d="M18 10a8 8 0 11-16 0 8 8 0 0116 0zm-7-4a1 1 0 11-2 0 1 1 0 012 0zM9 9a1 1 0 000 2v3a1 1 0 001 1h1a1 1 0 100-2v-3a1 1 0 00-1-1H9z" clip-rule="evenodd" />
                </svg>
            </div>
            <div class="ml-3">
                <h3 class="p-0 m-0 text-sm font-medium text-cub-blue">Why This Survey?</h3>
                <div class="mt-2 text-sm text-gray-700">
                    <p>
                        Cub Scouting is a family program, and our pack is stronger when every family contributes their unique talents!
                        This survey helps us match your skills and interests with pack activities. Whether you're a whiz in the kitchen,
                        love the outdoors, or have a knack for organizing — we can use your help.
                    </p>
                    <p class="mt-2">
                        There are no wrong answers. Even small contributions make a big difference!
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="px-4 mt-10 sm:px-6 lg:px-8">
    <div class="max-w-3xl mx-auto">
        <form action="https://submit-form.com/V4ljrTZmu" method="POST" class="space-y-8">

            <!-- Hidden redirect -->
            <input type="hidden" name="_redirect" value="https://pack57paloalto.com/talent-survey#thank-you" />

            <!-- Section 1: Family Information -->
            <div class="overflow-hidden bg-white rounded-lg shadow-md">
                <div class="px-6 py-3 bg-cub-blue">
                    <h2 class="m-0 text-lg font-bold text-white">Family Information</h2>
                </div>
                <div class="px-6 py-6 space-y-4">
                    <div>
                        <label for="parent_name" class="block text-sm font-medium text-gray-700">Parent/Guardian Name <span class="text-red-500">*</span></label>
                        <input type="text" name="parent_name" id="parent_name" required
                               class="block w-full mt-1 border-gray-300 rounded-md shadow-sm focus:border-cub-blue focus:ring-cub-blue">
                    </div>
                    <div class="grid gap-4 md:grid-cols-2">
                        <div>
                            <label for="email" class="block text-sm font-medium text-gray-700">Email <span class="text-red-500">*</span></label>
                            <input type="email" name="email" id="email" required
                                   class="block w-full mt-1 border-gray-300 rounded-md shadow-sm focus:border-cub-blue focus:ring-cub-blue">
                        </div>
                        <div>
                            <label for="phone" class="block text-sm font-medium text-gray-700">Phone Number <span class="text-red-500">*</span></label>
                            <input type="tel" name="phone" id="phone" required
                                   class="block w-full mt-1 border-gray-300 rounded-md shadow-sm focus:border-cub-blue focus:ring-cub-blue">
                        </div>
                    </div>

                    <!-- Additional Parent/Guardian (expandable) -->
                    <div class="pt-2">
                        <button type="button" id="add-parent-btn" onclick="document.getElementById('parent2-fields').classList.remove('hidden'); this.classList.add('hidden');"
                                class="inline-flex items-center gap-1 text-sm font-medium text-cub-blue hover:text-blue-700">
                            <svg class="w-4 h-4" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor">
                                <path stroke-linecap="round" stroke-linejoin="round" d="M12 4.5v15m7.5-7.5h-15" />
                            </svg>
                            Add Another Parent/Guardian
                        </button>
                        <div id="parent2-fields" class="hidden pt-4 mt-2 space-y-4 border-t border-gray-200">
                            <p class="text-xs text-gray-500">Optional — add a second parent or guardian if you'd like.</p>
                            <div>
                                <label for="parent2_name" class="block text-sm font-medium text-gray-700">Name</label>
                                <input type="text" name="parent2_name" id="parent2_name"
                                       class="block w-full mt-1 border-gray-300 rounded-md shadow-sm focus:border-cub-blue focus:ring-cub-blue">
                            </div>
                            <div class="grid gap-4 md:grid-cols-2">
                                <div>
                                    <label for="parent2_email" class="block text-sm font-medium text-gray-700">Email</label>
                                    <input type="email" name="parent2_email" id="parent2_email"
                                           class="block w-full mt-1 border-gray-300 rounded-md shadow-sm focus:border-cub-blue focus:ring-cub-blue">
                                </div>
                                <div>
                                    <label for="parent2_phone" class="block text-sm font-medium text-gray-700">Phone</label>
                                    <input type="tel" name="parent2_phone" id="parent2_phone"
                                           class="block w-full mt-1 border-gray-300 rounded-md shadow-sm focus:border-cub-blue focus:ring-cub-blue">
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="pt-4 mt-2 border-t border-gray-200">
                        <label for="school" class="block text-sm font-medium text-gray-700">What elementary school does your family attend? <span class="text-red-500">*</span></label>
                        <input type="text" name="school" id="school" required
                               class="block w-full mt-1 border-gray-300 rounded-md shadow-sm focus:border-cub-blue focus:ring-cub-blue">
                    </div>
                </div>
            </div>

            <!-- Section: Child Details -->
            <div class="overflow-hidden bg-white rounded-lg shadow-md">
                <div class="px-6 py-3 bg-cub-blue">
                    <h2 class="m-0 text-lg font-bold text-white">Scout Information</h2>
                </div>
                <div class="px-6 py-6 space-y-4">
                    <!-- Child 1 (always visible) -->
                    <p class="text-sm font-medium text-gray-700">Child 1</p>
                    <div class="grid gap-4 md:grid-cols-2">
                        <div>
                            <label for="child1_name" class="block text-sm font-medium text-gray-700">Name <span class="text-red-500">*</span></label>
                            <input type="text" name="child1_name" id="child1_name" required
                                   class="block w-full mt-1 border-gray-300 rounded-md shadow-sm focus:border-cub-blue focus:ring-cub-blue">
                        </div>
                        <div>
                            <label for="child1_age" class="block text-sm font-medium text-gray-700">Age <span class="text-red-500">*</span></label>
                            <input type="number" name="child1_age" id="child1_age" min="4" max="12" required
                                   class="block w-full mt-1 border-gray-300 rounded-md shadow-sm focus:border-cub-blue focus:ring-cub-blue">
                        </div>
                    </div>
                    <div class="grid gap-4 md:grid-cols-3">
                        <div>
                            <label for="child1_grade" class="block text-sm font-medium text-gray-700">Grade <span class="text-red-500">*</span></label>
                            <select name="child1_grade" id="child1_grade" required
                                    class="block w-full mt-1 border-gray-300 rounded-md shadow-sm focus:border-cub-blue focus:ring-cub-blue">
                                <option value="">Select...</option>
                                <option value="Kindergarten">Kindergarten</option>
                                <option value="1st Grade">1st Grade</option>
                                <option value="2nd Grade">2nd Grade</option>
                                <option value="3rd Grade">3rd Grade</option>
                                <option value="4th Grade">4th Grade</option>
                                <option value="5th Grade">5th Grade</option>
                                <option value="Other">Other</option>
                            </select>
                        </div>
                        <div>
                            <label for="child1_tshirt" class="block text-sm font-medium text-gray-700">T-Shirt Size</label>
                            <select name="child1_tshirt" id="child1_tshirt"
                                    class="block w-full mt-1 border-gray-300 rounded-md shadow-sm focus:border-cub-blue focus:ring-cub-blue">
                                <option value="">Select...</option>
                                <option value="YXS">Youth XS</option>
                                <option value="YS">Youth S</option>
                                <option value="YM">Youth M</option>
                                <option value="YL">Youth L</option>
                                <option value="YXL">Youth XL</option>
                                <option value="AS">Adult S</option>
                                <option value="AM">Adult M</option>
                                <option value="AL">Adult L</option>
                                <option value="AXL">Adult XL</option>
                                <option value="AXXL">Adult XXL</option>
                            </select>
                        </div>
                        <div>
                            <label for="child1_dietary" class="block text-sm font-medium text-gray-700">Dietary / Allergies</label>
                            <input type="text" name="child1_dietary" id="child1_dietary"
                                   class="block w-full mt-1 border-gray-300 rounded-md shadow-sm focus:border-cub-blue focus:ring-cub-blue"
                                   placeholder="None, nut allergy, etc.">
                        </div>
                    </div>

                    <!-- Child 2 (expandable) -->
                    <div class="pt-2">
                        <button type="button" id="add-child-btn" onclick="document.getElementById('child2-fields').classList.remove('hidden'); this.classList.add('hidden');"
                                class="inline-flex items-center gap-1 text-sm font-medium text-cub-blue hover:text-blue-700">
                            <svg class="w-4 h-4" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor">
                                <path stroke-linecap="round" stroke-linejoin="round" d="M12 4.5v15m7.5-7.5h-15" />
                            </svg>
                            Add Another Child
                        </button>
                        <div id="child2-fields" class="hidden pt-4 mt-2 space-y-4 border-t border-gray-200">
                            <p class="text-sm font-medium text-gray-700">Child 2</p>
                            <div class="grid gap-4 md:grid-cols-2">
                                <div>
                                    <label for="child2_name" class="block text-sm font-medium text-gray-700">Name</label>
                                    <input type="text" name="child2_name" id="child2_name"
                                           class="block w-full mt-1 border-gray-300 rounded-md shadow-sm focus:border-cub-blue focus:ring-cub-blue">
                                </div>
                                <div>
                                    <label for="child2_age" class="block text-sm font-medium text-gray-700">Age</label>
                                    <input type="number" name="child2_age" id="child2_age" min="4" max="12"
                                           class="block w-full mt-1 border-gray-300 rounded-md shadow-sm focus:border-cub-blue focus:ring-cub-blue">
                                </div>
                            </div>
                            <div class="grid gap-4 md:grid-cols-3">
                                <div>
                                    <label for="child2_grade" class="block text-sm font-medium text-gray-700">Grade</label>
                                    <select name="child2_grade" id="child2_grade"
                                            class="block w-full mt-1 border-gray-300 rounded-md shadow-sm focus:border-cub-blue focus:ring-cub-blue">
                                        <option value="">Select...</option>
                                        <option value="Kindergarten">Kindergarten</option>
                                        <option value="1st Grade">1st Grade</option>
                                        <option value="2nd Grade">2nd Grade</option>
                                        <option value="3rd Grade">3rd Grade</option>
                                        <option value="4th Grade">4th Grade</option>
                                        <option value="5th Grade">5th Grade</option>
                                        <option value="Other">Other</option>
                                    </select>
                                </div>
                                <div>
                                    <label for="child2_tshirt" class="block text-sm font-medium text-gray-700">T-Shirt Size</label>
                                    <select name="child2_tshirt" id="child2_tshirt"
                                            class="block w-full mt-1 border-gray-300 rounded-md shadow-sm focus:border-cub-blue focus:ring-cub-blue">
                                        <option value="">Select...</option>
                                        <option value="YXS">Youth XS</option>
                                        <option value="YS">Youth S</option>
                                        <option value="YM">Youth M</option>
                                        <option value="YL">Youth L</option>
                                        <option value="YXL">Youth XL</option>
                                        <option value="AS">Adult S</option>
                                        <option value="AM">Adult M</option>
                                        <option value="AL">Adult L</option>
                                        <option value="AXL">Adult XL</option>
                                        <option value="AXXL">Adult XXL</option>
                                    </select>
                                </div>
                                <div>
                                    <label for="child2_dietary" class="block text-sm font-medium text-gray-700">Dietary / Allergies</label>
                                    <input type="text" name="child2_dietary" id="child2_dietary"
                                           class="block w-full mt-1 border-gray-300 rounded-md shadow-sm focus:border-cub-blue focus:ring-cub-blue"
                                           placeholder="None, nut allergy, etc.">
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- 3+ children -->
                    <div>
                        <label for="additional_children" class="block text-sm font-medium text-gray-700">More than 2 children joining Pack 57? <span class="text-xs text-gray-400">(optional)</span></label>
                        <textarea name="additional_children" id="additional_children" rows="2"
                                  class="block w-full mt-1 border-gray-300 rounded-md shadow-sm focus:border-cub-blue focus:ring-cub-blue"
                                  placeholder="Please list name, age, grade, t-shirt size, and any dietary needs for each additional child."></textarea>
                    </div>
                </div>
            </div>

            <!-- Section: Scouting Experience -->
            <div class="overflow-hidden bg-white rounded-lg shadow-md">
                <div class="px-6 py-3 bg-cub-blue">
                    <h2 class="m-0 text-lg font-bold text-white">Scouting Experience</h2>
                </div>
                <div class="px-6 py-6 space-y-4">
                    <div>
                        <label for="scouting_experience" class="block text-sm font-medium text-gray-700">Your family's scouting background</label>
                        <select name="scouting_experience" id="scouting_experience"
                                class="block w-full mt-1 border-gray-300 rounded-md shadow-sm focus:border-cub-blue focus:ring-cub-blue">
                            <option value="">Select one...</option>
                            <option value="New to Scouting">New to Scouting</option>
                            <option value="1-2 years in Pack 57">1-2 years in Pack 57</option>
                            <option value="3+ years in Pack 57">3+ years in Pack 57</option>
                            <option value="Experienced (from another pack)">Experienced (from another pack)</option>
                            <option value="Returning family">Returning family</option>
                        </select>
                    </div>
                    <div>
                        <label for="scouting_background" class="block text-sm font-medium text-gray-700">Anything else about your scouting journey? <span class="text-xs text-gray-400">(optional)</span></label>
                        <input type="text" name="scouting_background" id="scouting_background"
                               class="block w-full mt-1 border-gray-300 rounded-md shadow-sm focus:border-cub-blue focus:ring-cub-blue"
                               placeholder="e.g., Eagle Scout parent, former Girl Scout, scouted in another country...">
                    </div>
                </div>
            </div>

            <!-- Section 2: Hobbies & Interests -->
            <div class="overflow-hidden bg-white rounded-lg shadow-md">
                <div class="px-6 py-3 bg-cub-blue">
                    <h2 class="m-0 text-lg font-bold text-white">Hobbies & Interests</h2>
                </div>
                <div class="px-6 py-6">
                    <p class="mb-4 text-sm text-gray-600">Check any hobbies or interests you'd be willing to share with the pack:</p>
                    <div class="grid gap-3 sm:grid-cols-2 md:grid-cols-3">
                        <label class="flex items-center gap-2 text-sm text-gray-700">
                            <input type="checkbox" name="hobbies[]" value="Camping" class="rounded text-cub-blue focus:ring-cub-blue"> Camping
                        </label>
                        <label class="flex items-center gap-2 text-sm text-gray-700">
                            <input type="checkbox" name="hobbies[]" value="Hiking" class="rounded text-cub-blue focus:ring-cub-blue"> Hiking
                        </label>
                        <label class="flex items-center gap-2 text-sm text-gray-700">
                            <input type="checkbox" name="hobbies[]" value="Fishing" class="rounded text-cub-blue focus:ring-cub-blue"> Fishing
                        </label>
                        <label class="flex items-center gap-2 text-sm text-gray-700">
                            <input type="checkbox" name="hobbies[]" value="Cooking" class="rounded text-cub-blue focus:ring-cub-blue"> Cooking
                        </label>
                        <label class="flex items-center gap-2 text-sm text-gray-700">
                            <input type="checkbox" name="hobbies[]" value="Photography" class="rounded text-cub-blue focus:ring-cub-blue"> Photography
                        </label>
                        <label class="flex items-center gap-2 text-sm text-gray-700">
                            <input type="checkbox" name="hobbies[]" value="Woodworking" class="rounded text-cub-blue focus:ring-cub-blue"> Woodworking
                        </label>
                        <label class="flex items-center gap-2 text-sm text-gray-700">
                            <input type="checkbox" name="hobbies[]" value="Gardening" class="rounded text-cub-blue focus:ring-cub-blue"> Gardening
                        </label>
                        <label class="flex items-center gap-2 text-sm text-gray-700">
                            <input type="checkbox" name="hobbies[]" value="Music" class="rounded text-cub-blue focus:ring-cub-blue"> Music
                        </label>
                        <label class="flex items-center gap-2 text-sm text-gray-700">
                            <input type="checkbox" name="hobbies[]" value="Arts & Crafts" class="rounded text-cub-blue focus:ring-cub-blue"> Arts & Crafts
                        </label>
                        <label class="flex items-center gap-2 text-sm text-gray-700">
                            <input type="checkbox" name="hobbies[]" value="Sports" class="rounded text-cub-blue focus:ring-cub-blue"> Sports
                        </label>
                        <label class="flex items-center gap-2 text-sm text-gray-700">
                            <input type="checkbox" name="hobbies[]" value="Science & Engineering" class="rounded text-cub-blue focus:ring-cub-blue"> Science & Engineering
                        </label>
                        <label class="flex items-center gap-2 text-sm text-gray-700">
                            <input type="checkbox" name="hobbies[]" value="First Aid / Safety" class="rounded text-cub-blue focus:ring-cub-blue"> First Aid / Safety
                        </label>
                    </div>
                    <div class="mt-4">
                        <label for="hobbies_other" class="block text-sm font-medium text-gray-700">Other hobbies or interests:</label>
                        <input type="text" name="hobbies_other" id="hobbies_other"
                               class="block w-full mt-1 border-gray-300 rounded-md shadow-sm focus:border-cub-blue focus:ring-cub-blue"
                               placeholder="e.g., astronomy, martial arts, beekeeping...">
                    </div>
                </div>
            </div>

            <!-- Section 3: Skills & Occupation -->
            <div class="overflow-hidden bg-white rounded-lg shadow-md">
                <div class="px-6 py-3 bg-cub-blue">
                    <h2 class="m-0 text-lg font-bold text-white">Skills & Occupation</h2>
                </div>
                <div class="px-6 py-6 space-y-4">
                    <div>
                        <label for="occupation" class="block text-sm font-medium text-gray-700">Occupation / Profession</label>
                        <input type="text" name="occupation" id="occupation"
                               class="block w-full mt-1 border-gray-300 rounded-md shadow-sm focus:border-cub-blue focus:ring-cub-blue">
                    </div>
                    <div>
                        <label for="employer" class="block text-sm font-medium text-gray-700">Employer (optional)</label>
                        <input type="text" name="employer" id="employer"
                               class="block w-full mt-1 border-gray-300 rounded-md shadow-sm focus:border-cub-blue focus:ring-cub-blue">
                    </div>
                    <div>
                        <label for="special_skills" class="block text-sm font-medium text-gray-700">Special skills, training, or certifications</label>
                        <textarea name="special_skills" id="special_skills" rows="3"
                                  class="block w-full mt-1 border-gray-300 rounded-md shadow-sm focus:border-cub-blue focus:ring-cub-blue"
                                  placeholder="e.g., CPR certified, commercial pilot, bilingual, Eagle Scout..."></textarea>
                    </div>
                </div>
            </div>

            <!-- Section 4: Ways to Help -->
            <div class="overflow-hidden bg-white rounded-lg shadow-md">
                <div class="px-6 py-3 bg-cub-blue">
                    <h2 class="m-0 text-lg font-bold text-white">Ways You Can Help</h2>
                </div>
                <div class="px-6 py-6">
                    <p class="mb-4 text-sm text-gray-600">Check any roles or activities you'd be interested in helping with:</p>
                    <div class="grid gap-3 sm:grid-cols-2">
                        <label class="flex items-center gap-2 text-sm text-gray-700">
                            <input type="checkbox" name="help[]" value="Den Leader" class="rounded text-cub-blue focus:ring-cub-blue"> Den Leader
                        </label>
                        <label class="flex items-center gap-2 text-sm text-gray-700">
                            <input type="checkbox" name="help[]" value="Assistant Den Leader" class="rounded text-cub-blue focus:ring-cub-blue"> Assistant Den Leader
                        </label>
                        <label class="flex items-center gap-2 text-sm text-gray-700">
                            <input type="checkbox" name="help[]" value="Committee Member" class="rounded text-cub-blue focus:ring-cub-blue"> Committee Member
                        </label>
                        <label class="flex items-center gap-2 text-sm text-gray-700">
                            <input type="checkbox" name="help[]" value="Event Planning" class="rounded text-cub-blue focus:ring-cub-blue"> Event Planning
                        </label>
                        <label class="flex items-center gap-2 text-sm text-gray-700">
                            <input type="checkbox" name="help[]" value="Transportation / Logistics" class="rounded text-cub-blue focus:ring-cub-blue"> Transportation / Logistics
                        </label>
                        <label class="flex items-center gap-2 text-sm text-gray-700">
                            <input type="checkbox" name="help[]" value="Fundraising" class="rounded text-cub-blue focus:ring-cub-blue"> Fundraising
                        </label>
                        <label class="flex items-center gap-2 text-sm text-gray-700">
                            <input type="checkbox" name="help[]" value="Outdoor Activities" class="rounded text-cub-blue focus:ring-cub-blue"> Outdoor Activities
                        </label>
                        <label class="flex items-center gap-2 text-sm text-gray-700">
                            <input type="checkbox" name="help[]" value="Teaching a Skill / Demo" class="rounded text-cub-blue focus:ring-cub-blue"> Teaching a Skill / Demo
                        </label>
                        <label class="flex items-center gap-2 text-sm text-gray-700">
                            <input type="checkbox" name="help[]" value="Photography / Videography" class="rounded text-cub-blue focus:ring-cub-blue"> Photography / Videography
                        </label>
                        <label class="flex items-center gap-2 text-sm text-gray-700">
                            <input type="checkbox" name="help[]" value="Website / Communications" class="rounded text-cub-blue focus:ring-cub-blue"> Website / Communications
                        </label>
                    </div>
                    <div class="mt-4">
                        <label for="help_other" class="block text-sm font-medium text-gray-700">Other ways you'd like to help:</label>
                        <input type="text" name="help_other" id="help_other"
                               class="block w-full mt-1 border-gray-300 rounded-md shadow-sm focus:border-cub-blue focus:ring-cub-blue"
                               placeholder="e.g., I have access to a wood shop, I can host a pack meeting...">
                    </div>
                </div>
            </div>

            <!-- Section: Resources You Can Provide -->
            <div class="overflow-hidden bg-white rounded-lg shadow-md">
                <div class="px-6 py-3 bg-cub-blue">
                    <h2 class="m-0 text-lg font-bold text-white">Resources You Can Provide</h2>
                </div>
                <div class="px-6 py-6">
                    <p class="mb-4 text-sm text-gray-600">Do you have access to any resources that could help the pack?</p>
                    <div class="grid gap-3 sm:grid-cols-2">
                        <label class="flex items-center gap-2 text-sm text-gray-700">
                            <input type="checkbox" name="resources[]" value="Small meeting space" class="rounded text-cub-blue focus:ring-cub-blue"> Small meeting space
                        </label>
                        <label class="flex items-center gap-2 text-sm text-gray-700">
                            <input type="checkbox" name="resources[]" value="Large event space" class="rounded text-cub-blue focus:ring-cub-blue"> Large event space
                        </label>
                        <label class="flex items-center gap-2 text-sm text-gray-700">
                            <input type="checkbox" name="resources[]" value="Adult meeting space" class="rounded text-cub-blue focus:ring-cub-blue"> Adult meeting space
                        </label>
                        <label class="flex items-center gap-2 text-sm text-gray-700">
                            <input type="checkbox" name="resources[]" value="Woodworking workshop" class="rounded text-cub-blue focus:ring-cub-blue"> Woodworking workshop
                        </label>
                        <label class="flex items-center gap-2 text-sm text-gray-700">
                            <input type="checkbox" name="resources[]" value="Camping gear for lending" class="rounded text-cub-blue focus:ring-cub-blue"> Camping gear for lending
                        </label>
                    </div>
                    <div class="mt-4">
                        <label for="resources_other" class="block text-sm font-medium text-gray-700">Other resources:</label>
                        <input type="text" name="resources_other" id="resources_other"
                               class="block w-full mt-1 border-gray-300 rounded-md shadow-sm focus:border-cub-blue focus:ring-cub-blue"
                               placeholder="e.g., access to a pool, backyard fire pit, projector...">
                    </div>
                </div>
            </div>

            <!-- Section 5: Availability -->
            <div class="overflow-hidden bg-white rounded-lg shadow-md">
                <div class="px-6 py-3 bg-cub-blue">
                    <h2 class="m-0 text-lg font-bold text-white">Availability</h2>
                </div>
                <div class="px-6 py-6">
                    <p class="mb-4 text-sm text-gray-600">When are you generally available to help?</p>
                    <div class="grid gap-3 sm:grid-cols-2">
                        <label class="flex items-center gap-2 text-sm text-gray-700">
                            <input type="checkbox" name="availability[]" value="Weekday Evenings" class="rounded text-cub-blue focus:ring-cub-blue"> Weekday Evenings
                        </label>
                        <label class="flex items-center gap-2 text-sm text-gray-700">
                            <input type="checkbox" name="availability[]" value="Weekday Daytime" class="rounded text-cub-blue focus:ring-cub-blue"> Weekday Daytime
                        </label>
                        <label class="flex items-center gap-2 text-sm text-gray-700">
                            <input type="checkbox" name="availability[]" value="Weekends" class="rounded text-cub-blue focus:ring-cub-blue"> Weekends
                        </label>
                        <label class="flex items-center gap-2 text-sm text-gray-700">
                            <input type="checkbox" name="availability[]" value="Flexible" class="rounded text-cub-blue focus:ring-cub-blue"> Flexible
                        </label>
                    </div>
                </div>
            </div>

            <!-- Section 6: Additional Comments -->
            <div class="overflow-hidden bg-white rounded-lg shadow-md">
                <div class="px-6 py-3 bg-cub-blue">
                    <h2 class="m-0 text-lg font-bold text-white">Additional Comments</h2>
                </div>
                <div class="px-6 py-6">
                    <label for="comments" class="block text-sm font-medium text-gray-700">Anything else you'd like us to know?</label>
                    <textarea name="comments" id="comments" rows="4"
                              class="block w-full mt-1 border-gray-300 rounded-md shadow-sm focus:border-cub-blue focus:ring-cub-blue"
                              placeholder="Special considerations, questions, ideas for pack activities..."></textarea>
                </div>
            </div>

            <!-- Volunteer Acknowledgment -->
            <div class="p-4 border-l-4 rounded-r-lg bg-amber-50 border-cub-gold">
                <label class="flex items-start gap-3 cursor-pointer">
                    <input type="checkbox" name="volunteer_acknowledgment" value="Yes" required
                           class="mt-1 rounded text-cub-blue focus:ring-cub-blue">
                    <span class="text-sm text-gray-700">
                        I understand that Cub Scouts is a family-driven program and I commit to volunteering my time to support Pack 57 activities. <span class="text-red-500">*</span>
                    </span>
                </label>
            </div>

            <!-- Submit -->
            <div class="text-center">
                <button type="submit"
                        class="inline-block px-8 py-3 text-base font-bold text-white border border-transparent rounded-md shadow-md bg-cub-blue hover:bg-blue-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-cub-blue">
                    Submit Survey
                </button>
                <p class="mt-2 text-sm text-gray-500">Thank you for helping make Pack 57 great!</p>
            </div>

        </form>
    </div>

    <!-- Thank You message (shown when redirected back after submission) -->
    <div id="thank-you" class="hidden max-w-3xl mx-auto mt-10">
        <div class="p-6 text-center border-2 rounded-lg bg-green-50 border-green-200">
            <svg class="w-12 h-12 mx-auto text-green-500" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor">
                <path stroke-linecap="round" stroke-linejoin="round" d="M9 12.75L11.25 15 15 9.75M21 12a9 9 0 11-18 0 9 9 0 0118 0z" />
            </svg>
            <h2 class="mt-4 text-2xl font-bold text-green-800">Thank You!</h2>
            <p class="mt-2 text-green-700">Your talent survey has been submitted. We appreciate your willingness to help Pack 57!</p>
        </div>
    </div>
</div>

<script>
    // Show thank-you message if redirected back with #thank-you hash
    if (window.location.hash === '#thank-you') {
        document.getElementById('thank-you').classList.remove('hidden');
        document.querySelector('form').classList.add('hidden');
        window.scrollTo({ top: 0, behavior: 'smooth' });
    }
</script>
